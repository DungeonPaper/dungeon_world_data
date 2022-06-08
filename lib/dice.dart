import 'dart:convert';
import 'dart:math';

/// Dice can have sides, an amount and modifiers.
///
/// You may also use one of the rolling convenience methods.
/// For more information about rolls see DiceRoll class
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

  final int amount;
  final int sides;
  final int? modifierValue;
  final String? modifierStat;
  final String modifierSign;

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
    var matches = _diceMatches(json);
    var amount = int.tryParse(matches[0]!);
    var sides = int.tryParse(matches[1]!);
    var modifierSign = matches[2];
    var modifierValue = matches[3] != null ? int.tryParse(matches[3]!) : null;
    var modifierStat =
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

  Dice copyWithModifierValue(int statValue) => copyWith(
        amount: amount,
        sides: sides,
        modifierValue: statValue,
        modifierSign: !statValue.isNegative ? '+' : '-',
      );

  @override
  String toString() => "${amount}d$sides$modifierWithSign";

  String toJson() => toString();

  String get modifierWithSign =>
      hasModifier ? "$modifierSign${modifierValue?.abs() ?? modifierStat}" : "";

  bool get hasModifier => ((modifierValue != null && modifierValue != 0) || modifierStat != null);

  String get modifier =>
      hasModifier ? modifierStat ?? (modifierValue != 0 ? modifierValue : '')!.toString() : "";

  DiceRoll roll() {
    if (needsModifier) {
      throw Exception("Dice is being rolled without an actual modifier."
          "Use `copyWithModifierValue`.\n"
          "Expected modifier: $modifierWithSign");
    }
    var arr = <int>[];
    for (var i = 0; i < amount; i++) {
      arr.add(Random().nextInt(sides - 1) + 1);
    }
    return DiceRoll(dice: this, results: arr);
  }

  bool get needsModifier => modifierStat != null && modifierValue == null;

  operator +(int amount) => copyWith(amount: this.amount + amount);
  operator -(int amount) => copyWith(amount: this.amount - amount);
  operator *(int amount) => copyWith(amount: this.amount * amount);
  operator /(int amount) => copyWith(amount: this.amount ~/ amount);

  static List<Dice> flatten(List<Dice> dice) =>
      dice.fold([], (all, cur) => [...all, ...List.filled(cur.amount, cur / cur.amount)]);

  static List<String?> _diceMatches(String json) {
    _assertDicePattern(json);
    var m = _dicePattern.firstMatch(json)!;
    return m.groups([1, 2, 4, 5]);
  }

  static void _assertDicePattern(String dice) {
    if (!_dicePattern.hasMatch(dice)) {
      throw Exception("Dice format is invalid, must be {amount}d{sides}([+-]{modifier})"
          "(e.g. 1d20, 2d6+DEX, 1d8-3)\n"
          "Received: $dice");
    }
  }
}

class DiceRoll {
  final Dice dice;
  final List<int> results;

  DiceRoll({required this.dice, required this.results}) {
    assertDiceModifier();
  }

  static List<DiceRoll> rollMany(List<Dice> dice) => dice.map((d) => roll(d)).toList();

  static DiceRoll roll(Dice dice) => dice.roll();

  int get total => results.reduce((all, cur) => all + cur) + (dice.modifierValue ?? 0);

  bool get didHitNaturalMax => indexOfNaturalMax >= 0;
  int get indexOfNaturalMax => results.indexOf(dice.sides);

  void assertDiceModifier() {
    if (dice.needsModifier) {
      throw Exception("Dice is being rolled without an actual modifier."
          "Use `dice.copyWithModifierValue(int modifierValue)`.\n"
          "Expected modifier: ${dice.modifierWithSign}");
    }
  }
}
