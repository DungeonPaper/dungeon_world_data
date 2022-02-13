import 'dart:convert';
import 'dart:math';

class Dice {
  Dice({
    required this.amount,
    required this.sides,
    this.modifier,
  });

  final int amount;
  final int sides;
  final int? modifier;

  Dice copyWith({
    int? amount,
    int? sides,
    int? modifier,
  }) =>
      Dice(
        amount: amount ?? this.amount,
        sides: sides ?? this.sides,
        modifier: modifier ?? this.modifier,
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

  String toRawJson() => toJson();

  factory Dice.fromJson(String json) {
    var parts = json.split("d");
    var amount = int.tryParse(parts[0]);
    int? sides;
    int? modifier;
    if (parts[1].contains(RegExp(r'[-+]'))) {
      var idx = parts[1].indexOf(RegExp(r'[^0-9]'));
      sides = int.tryParse(parts[1].substring(0, idx));
      modifier = int.tryParse(parts[1].substring(idx));
    } else {
      sides = int.tryParse(parts[1]);
    }

    if (sides == null || amount == null) {
      throw Exception("Dice parsing failed");
    }

    return Dice(
      amount: amount,
      sides: sides,
      modifier: modifier,
    );
  }

  @override
  String toString() => "${amount}d$sides$modifierWithSign";

  String toJson() => toString();

  String get modifierWithSign => modifier == null
      ? ""
      : modifier! > 0
          ? "+$modifier"
          : "$modifier";

  DiceResult roll() => DiceResult.roll(this);

  operator *(int amount) => copyWith(amount: this.amount * amount);
  operator /(int amount) => copyWith(amount: this.amount ~/ amount);
}

class DiceResult {
  final Dice dice;
  final List<int> results;

  DiceResult({required this.dice, required this.results});

  static List<DiceResult> rollMany(List<Dice> dice) {
    return dice.map((d) {
      var arr = <int>[];
      for (var i = 0; i < d.amount; i++) {
        arr.add(Random().nextInt(d.sides));
      }
      return DiceResult(dice: d, results: arr);
    }).toList();
  }

  int get total =>
      results.reduce((all, cur) => all + cur) + (dice.modifier ?? 0);

  bool get didHitNaturalMax => indexOfNaturalMax >= 0;
  int get indexOfNaturalMax => results.indexOf(dice.sides);

  static DiceResult roll(Dice dice) {
    return rollMany([dice])[0];
  }
}
