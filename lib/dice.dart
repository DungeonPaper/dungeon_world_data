import 'dart:math';
import 'package:quiver/core.dart';

class Dice {
  // Amount of dice in set
  num amount;

  // No. of sides for the die
  num sides;

  // Modifier value for dice, can be added to `DiceResult` value
  num modifier;

  // Last result rolled by this die
  DiceResult lastResult;

  /// Simple dice, with sides, die count and modifier.
  /// You can multiply, add or subtract Dice objects to change the amount of rolls (notice dice must
  /// be with the same amount of sides).
  ///
  /// To roll multiple dice at once, you may use the static `Dice.roll(<Dice>[...])`.
  Dice(this.sides, [this.amount = 1, this.modifier = 0]);

  static Dice d4 = Dice(4);
  static Dice d6 = Dice(6);
  static Dice d8 = Dice(8);
  static Dice d10 = Dice(10);
  static Dice d12 = Dice(12);
  static Dice d20 = Dice(20);

  Dice copyWith({int sides, int amount, int modifier}) => Dice(
        sides ?? this.sides,
        amount ?? this.amount,
        modifier ?? this.modifier,
      );

  /// Parse strings such as `d6`, or `2d20` into a `Dice` object.
  static Dice parse(String str) {
    List segs = str.split(RegExp('d', caseSensitive: true));
    if (segs[0] != '') {
      return Dice(num.parse(segs[1]), num.parse(segs[0]));
    }
    return Dice(num.parse(segs[1]));
  }

  @override
  String toString() =>
      '${amount}d${sides}${modifier != null && modifier != 0 ? modRepr : ''}';

  Dice operator *(obj) {
    if (obj is Dice) {
      if (obj.sides != sides) {
        throw ("Can't multiply different sided die!");
      }
      return Dice(sides, obj.amount * amount, modifier);
    }

    if (obj is num) {
      return Dice(sides, (amount * obj).toInt());
    }

    return this;
  }

  Dice operator /(obj) {
    if (obj is Dice) {
      if (obj.sides != sides) {
        throw ("Can't divide different sided die!");
      }
      return Dice(sides, obj.amount / amount, modifier);
    }

    if (obj is num) {
      return Dice(sides, amount ~/ obj, modifier);
    }

    return this;
  }

  Dice operator +(obj) {
    if (obj is Dice) {
      if (obj.sides != sides) {
        throw ("Can't add different sided die!");
      }
      return Dice(sides, obj.amount + amount, modifier);
    }

    if (obj is num) {
      return Dice(sides, amount + obj.toInt(), modifier);
    }

    return this;
  }

  Dice operator -(obj) {
    if (obj is Dice) {
      if (obj.sides != sides) {
        throw ("Can't subtract different sided die!");
      }
      return Dice(sides, obj.amount - amount, modifier);
    }

    if (obj is num) {
      return Dice(sides, amount - obj.toInt(), modifier);
    }

    return this;
  }

  @override
  bool operator ==(obj) {
    if (obj is Dice) {
      return amount == obj.amount &&
          sides == obj.sides &&
          modifier == obj.modifier;
    }

    return obj.toString() == toString();
  }

  @override
  int get hashCode => hash3(amount, sides, modifier);

  /// Rolls the dice and returns the `DiceResult`.
  DiceResult getRoll() {
    var results = <num>[];
    for (num i = 0; i < amount; i++) {
      results.add(Random().nextInt(sides) + 1);
    }
    return lastResult = DiceResult(this, results);
  }

  Dice get single => this / amount;
  Dice multiple(int amount) => single * amount;

  /// Roll arbitrary amount of (possibly) different sided dice.
  static List<DiceResult> roll(List<Dice> dice) {
    var results = <DiceResult>[];
    dice.forEach((die) {
      results.add(die.getRoll());
    });

    return results;
  }

  String get modRepr => (modifier > 0 ? '+' : '') + modifier.toString();
}

class DiceResult {
  /// The corresponding dice.
  Dice dice;

  /// List of results, by order of dice rolled.
  List<num> results;

  /// Represents a result of a die roll
  DiceResult(this.dice, this.results);

  @override
  String toString() => '$dice${didHitNaturalMax ? '*' : ''} => $total';

  // More detailed version of `toString`.
  String get toDetailedString =>
      '$dice${didHitNaturalMax ? '*' : ''} => $total\n  $mappedResults\n  ${didHitNaturalMax ? "Die no. ${indexOfNaturalMax} hit 20" : "Didn\'t hit 20"}';

  // All results layed out with their respective die.
  String get mappedResults {
    var out = <String>[];
    for (num i = 0; i < results.length; i++) {
      out.add('${i + 1}: ${results[i]}');
    }
    return out.toString() + (dice.modifier != 0 ? ' (${dice.modRepr})' : '');
  }

  /// Total (accumulated) value of result, including modifiers.
  num get total => results.reduce((tot, cur) => tot + cur) + dice.modifier;

  // Boolean that represents whether any of the rolled dice hit their natural max value (e.g. 20 for d20)
  bool get didHitNaturalMax => results.any((r) => r == dice.sides);

  // Get first index of the die that hit natural max value.
  num get indexOfNaturalMax => results.indexOf(dice.sides);
}
