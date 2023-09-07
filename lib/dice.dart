import 'dart:convert';
import 'dart:math';

/// Dice can have sides, an amount and modifiers.
///
/// You may also use one of the rolling convenience methods.
/// For more information about rolls and their results see `DiceRoll` and `DiceRollResult` classes.
///
/// You can multiply dice of the same sides together, which will return the amount of dice doubled between each other.
/// This also works for division, addition and subtraction.
/// Sides and modifiers are not affected by this, and the leftmost operant is always the one that is used.
class Dice {
  Dice({
    required this.amount,
    required this.sides,
    this.modifierValue,
    this.modifierStat,
    String? modifierSign,
  }) : modifierSign = modifierSign ??
            (modifierValue != null
                ? modifierValue >= 0
                    ? "+"
                    : "-"
                : "+");

  /// The amount of dice to roll. In a 2d6 roll, this would be 2.
  final int amount;

  /// The amount of sides on the dice. In a 2d6 roll, this would be 6.
  final int sides;

  /// The modifier value. In a 2d6+3 roll, this would be 3.
  final int? modifierValue;

  /// The modifier stat. In a 2d6+DEX roll, this would be DEX.
  final String? modifierStat;

  /// The modifier sign. In a 2d6+3 roll, this would be +. In a 2d6-3 roll, this would be -.
  final String modifierSign;

  /// If you want to change the modifier value, use [copyWithModifierValue] instead.
  /// Otherwise, use `copyWith` to change the modifier sign, as this class is immutable,
  /// and the sign is determined by the modifier value.
  Dice copyWith({
    int? amount,
    int? sides,
    int? modifierValue,
    String? modifierSign,
    String? modifierStat,
  }) =>
      Dice(
        amount: amount ?? this.amount,
        sides: sides ?? this.sides,
        modifierSign: modifierSign ?? this.modifierSign,
        modifierValue: modifierValue ?? this.modifierValue,
        modifierStat: modifierStat ?? this.modifierStat,
      );

  factory Dice.fromRawJson(String str) => Dice.fromJson(json.decode(str));

  static Dice d4 = Dice(amount: 1, sides: 4);
  static Dice d6 = Dice(amount: 1, sides: 6);
  static Dice d8 = Dice(amount: 1, sides: 8);
  static Dice d10 = Dice(amount: 1, sides: 10);
  static Dice d12 = Dice(amount: 1, sides: 12);
  static Dice d20 = Dice(amount: 1, sides: 20);
  static Dice d60 = Dice(amount: 1, sides: 60);
  static Dice d100 = Dice(amount: 1, sides: 100);
  static final _dicePattern = RegExp(r'(\d+)d([0-9]+)(([+-])([0-9a-z]+))?', caseSensitive: false);

  String toRawJson() => toJson();

  factory Dice.fromJson(String json) {
    final matches = _diceMatches(json);
    final amount = int.tryParse(matches[0]!);
    final sides = int.tryParse(matches[1]!);
    final modifierSign = matches[2];
    final modifierValue = matches[3] != null ? int.tryParse(matches[3]!) : null;
    final modifierStat =
        matches[3] != null && modifierValue == null ? matches[3]!.toUpperCase() : null;

    if (sides == null || amount == null) {
      throw Exception("Dice parsing failed");
    }

    return Dice(
      amount: amount,
      sides: sides,
      modifierValue: modifierSign == '-' ? -(modifierValue ?? 0) : modifierValue,
      modifierSign: modifierSign,
      modifierStat: modifierStat,
    );
  }

  /// Creates a copy of this dice with the modifier value set to the given stat value.
  /// The sign is updated using this operation, so use it instead of [copyWith] if you want to use a stat.
  Dice copyWithModifierValue(int statValue) => copyWith(
        amount: amount,
        sides: sides,
        modifierValue: statValue,
        modifierSign: !statValue.isNegative ? '+' : '-',
      );

  @override
  String toString() => "${amount}d$sides$modifierWithSign";

  String toJson() => toString();

  /// The modifier with the sign. In a 2d6+3 roll, this would be +3. In a 2d6-3 roll, this would be -3.
  String get modifierWithSign =>
      hasModifier ? "$modifierSign${modifierValue?.abs() ?? modifierStat}" : "";

  /// Whether or not this dice has a modifier.
  bool get hasModifier => ((modifierValue != null && modifierValue != 0) || modifierStat != null);

  /// The modifier name. In a 2d6+DEX roll, this would be DEX.
  String get modifier =>
      hasModifier ? modifierStat ?? (modifierValue != 0 ? modifierValue : '')!.toString() : "";

  /// Rolls the dice and returns the result, a random number between 1 and the amount of sides.
  /// It is returned with the dice that was rolled in a [DiceRoll] object, which also contains the
  /// results of the individual dice.
  DiceRoll roll() {
    if (needsModifier) {
      throw Exception("Dice is being rolled without an actual modifier."
          "Use `copyWithModifierValue`.\n"
          "Expected modifier: $modifierWithSign");
    }
    final arr = <int>[];
    for (var i = 0; i < amount; i++) {
      arr.add(Random().nextInt(sides) + 1);
    }
    return DiceRoll(dice: this, results: arr);
  }

  /// Whether or not this dice needs a modifier to be rolled - if it has a modifier stat but no value.
  bool get needsModifier => modifierStat != null && modifierValue == null;

  operator +(int amount) => copyWith(amount: this.amount + amount);
  operator -(int amount) => copyWith(amount: this.amount - amount);
  operator *(int amount) => copyWith(amount: this.amount * amount);
  operator /(int amount) => copyWith(amount: this.amount ~/ amount);

  /// Flattens a list of dice into a list of dice with the amount set to 1, each dice roll separated
  /// into its own dice.
  static List<Dice> flatten(List<Dice> dice) =>
      dice.fold([], (all, cur) => [...all, ...List.filled(cur.amount, cur / cur.amount)]);

  static List<String?> _diceMatches(String json) {
    _assertDicePattern(json);
    final m = _dicePattern.firstMatch(json)!;
    return m.groups([1, 2, 4, 5]);
  }

  static void _assertDicePattern(String dice) {
    if (!_dicePattern.hasMatch(dice)) {
      throw Exception("Dice format is invalid, must be {amount}d{sides}([+-]{modifier})"
          "(e.g. 1d20, 2d6+DEX, 1d8-3)\n"
          "Received: $dice");
    }
  }

  /// Parses a string for dice rolls and returns a list of dice found.
  /// The string must be in the format of `XdY` where X is the amount of dice and Y is the amount of sides,
  /// optionally followed by a modifier in the format of `+Z` or `-Z` where Z is the modifier value.
  ///
  /// Example: `2d6+DEX` would return a list with a single dice with 2 amount, 6 sides and a modifier of DEX.
  static List<Dice> guessFromString(String str) {
    final basicRollPattern = RegExp(r'\broll([+-][a-z]+)\b', caseSensitive: false);
    final dicePattern = RegExp(r'\b\dd\d+\b', caseSensitive: false);
    final found = <Dice>[];
    final basicRollMatches = basicRollPattern.allMatches(str);
    for (final match in basicRollMatches) {
      found.add(Dice.fromJson('2d6' + match.group(1)!.toUpperCase()));
    }
    final diceMatches = dicePattern.allMatches(str);
    for (final match in diceMatches) {
      found.add(Dice.fromJson(match.input.substring(match.start, match.end)));
    }
    return found;
  }

  @override
  bool operator ==(Object? other) =>
      identical(this, other) ||
      other is Dice &&
          runtimeType == other.runtimeType &&
          amount == other.amount &&
          sides == other.sides &&
          modifierValue == other.modifierValue &&
          modifierSign == other.modifierSign &&
          modifierStat == other.modifierStat;

  @override
  int get hashCode => Object.hashAll([amount, sides, modifierValue, modifierSign, modifierStat]);

  String get debugProperties =>
      'amount: $amount, sides: $sides, modifierValue: $modifierValue, modifierSign: $modifierSign, modifierStat: $modifierStat';
}

/// A dice roll, containing the dice that was rolled and the results of the individual dice.
class DiceRoll {
  final Dice dice;
  final List<int> results;

  DiceRoll({required this.dice, required this.results}) {
    _assertDiceModifier();
  }

  /// Rolls a list of dice and returns a list of dice rolls.
  static List<DiceRoll> rollMany(List<Dice> dice) => dice.map((d) => roll(d)).toList();

  /// Rolls a single dice and returns the result.
  static DiceRoll roll(Dice dice) => dice.roll();

  /// The total of the dice roll, including the modifier.
  int get total => results.reduce((all, cur) => all + cur) + (dice.modifierValue ?? 0);

  /// Represents whether or not the dice roll was a critical hit, meaning that the highest possible
  /// value was rolled.
  bool get didHitNaturalMax => indexOfNaturalMax >= 0;

  /// If the dice roll was a critical hit, this returns the index of the dice that was the critical hit.
  int get indexOfNaturalMax => results.indexOf(dice.sides);

  void _assertDiceModifier() {
    if (dice.needsModifier) {
      throw Exception("Dice is being rolled without an actual modifier."
          "Use `dice.copyWithModifierValue(int modifierValue)`.\n"
          "Expected modifier: ${dice.modifierWithSign}");
    }
  }
}
