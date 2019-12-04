import 'package:dungeon_world_data/dice.dart';
import 'package:test/test.dart';

void main() {
  group('Dice', () {
    test('Sides and amount', () {
      Dice expected = Dice(6, 2);
      expect(expected.sides, equals(6));
      expect(expected.amount, equals(2));
    });

    test('String representation', () {
      Dice dice = Dice(10, 4);
      expect(dice.toString(), equals("4d10"));
    });

    test('Multiplication', () {
      num amt = 10;
      Dice dice = Dice.d12 * amt;
      expect(dice.amount, amt);
    });

    test('Equality', () {
      Dice dice = Dice(12);
      expect(dice, equals(Dice.d12));
    });

    test('Roll', () {
      Dice d1 = Dice.d6;
      Dice d2 = Dice.d12 * 2;
      Dice d3 = Dice.d8 * 3;
      DiceResult roll1 = d1.getRoll();
      DiceResult roll2 = d2.getRoll();
      DiceResult roll3 = d3.getRoll();

      expect(roll1.results[0], greaterThanOrEqualTo(1));
      expect(roll1.results[0], lessThanOrEqualTo(6));

      expect(roll2.results.length, equals(d2.amount));
      expect(roll2.results[0], greaterThanOrEqualTo(1));
      expect(roll2.results[0], lessThanOrEqualTo(12));
      expect(roll2.results[1], greaterThanOrEqualTo(1));
      expect(roll2.results[1], lessThanOrEqualTo(12));

      expect(roll3.results.length, equals(d3.amount));
      expect(roll3.results[0], greaterThanOrEqualTo(1));
      expect(roll3.results[0], lessThanOrEqualTo(8));
      expect(roll3.results[1], greaterThanOrEqualTo(1));
      expect(roll3.results[1], lessThanOrEqualTo(8));
      expect(roll3.results[2], greaterThanOrEqualTo(1));
      expect(roll3.results[2], lessThanOrEqualTo(8));
    });

    test('Roll', () {
      Dice dice = Dice.d6;
      DiceResult roll = dice.getRoll();
      expect(roll.results[0], greaterThanOrEqualTo(1));
      expect(roll.results[0], lessThanOrEqualTo(6));
    });
  });
}
