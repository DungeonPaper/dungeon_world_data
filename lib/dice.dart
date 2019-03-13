import 'dart:math';
import 'package:quiver/core.dart';

class Dice {
  final num amount;
  final num sides;

  /// Simple dice, with sides and die count.
  /// You can multiply, add or subtract Dice objects to change the amount of rolls (notice dice must
  /// be with the same amount of sides).
  ///
  /// To roll multiple dice at once, you may use the static `Dice.roll(<Dice>[...])`.
  Dice(this.sides, [this.amount = 1]);

  static Dice d4 = Dice(4);
  static Dice d6 = Dice(6);
  static Dice d8 = Dice(8);
  static Dice d10 = Dice(10);
  static Dice d12 = Dice(12);
  static Dice d20 = Dice(20);

  /// Parse strings such as `d6`, or `2d20` into a `Dice` object.
  static Dice parse(String str) {
    List segs = str.split(RegExp('d', caseSensitive: true));
    if (segs[0] != '') {
      return Dice(num.parse(segs[1]), num.parse(segs[0]));
    }
    return Dice(num.parse(segs[1]));
  }

  @override
  String toString() => '${amount}d${sides}';

  operator *(obj) {
    if (obj is Dice) {
      if (obj.sides != sides) {
        throw ("Can't multiply different sided die!");
      }
      return Dice(sides, obj.amount * amount);
    }

    if (obj is num) {
      return Dice(sides, amount * obj);
    }

    return this;
  }

  operator +(obj) {
    if (obj is Dice) {
      if (obj.sides != sides) {
        throw ("Can't add different sided die!");
      }
      return Dice(sides, obj.amount + amount);
    }

    if (obj is num) {
      return Dice(sides, amount + obj);
    }

    return this;
  }

  operator -(obj) {
    if (obj is Dice) {
      if (obj.sides != sides) {
        throw ("Can't subtract different sided die!");
      }
      return Dice(sides, obj.amount - amount);
    }

    if (obj is num) {
      return Dice(sides, amount - obj);
    }

    return this;
  }

  operator ==(obj) {
    if (obj is Dice) {
      return amount == obj.amount && sides == obj.sides;
    }

    return obj.toString() == toString();
  }

  @override
  int get hashCode => hash2(amount, sides);

  /// Rolls the dice and returns the `DiceResult`.
  DiceResult getRoll() {
    List<num> results = [];
    for (num i = 0; i < amount; i++) {
      results.add(Random().nextInt(sides) + 1);
    }

    return DiceResult(this, results);
  }

  /// Roll arbitrary amount of (possibly) different sided dice.
  static List<DiceResult> roll(List<Dice> dice) {
    List<DiceResult> results = [];
    dice.forEach((die) {
      results.add(die.getRoll());
    });

    return results;
  }
}

class DiceResult {
  /// The corresponding dice.
  final Dice dice;

  /// List of results, by order of dice rolled.
  final List<num> results;

  /// Total accumulated results
  final num total;

  /// `true` if any dice is a roll of 20.
  final bool hit20;

  /// Dice index which hit 20. `null` if none hit;
  final int hit20At;

  /// Represents a result of a die roll
  DiceResult(this.dice, this.results)
      : total = results.reduce((tot, cur) => tot + cur),
        hit20 = results.any((r) => r == 20),
        hit20At = results.any((r) => r == 20) ? results.indexOf(20) : null;

  @override
  String toString() => '$dice${hit20 ? '*' : ''} => $total';
  String get detailed =>
      '$dice${hit20 ? '*' : ''} => $total\n  $mappedResults\n  ${hit20 ? "Die no. ${hit20At} hit 20" : "Didn\'t hit 20"}';
  String get mappedResults {
    List<String> out = [];
    for (num i = 0; i < results.length; i++) {
      out.add('${i + 1}: ${results[i]}');
    }
    return out.toString();
  }
}
