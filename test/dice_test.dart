import 'package:dungeon_world_data/dw_data.dart';
import 'package:test/test.dart';

void main() {
  group('Dice', () {
    test('Sides and amount', () {
      var expected = Dice(6, 2);
      expect(expected.sides, equals(6));
      expect(expected.amount, equals(2));
    });

    test('String representation', () {
      var dice = Dice(10, 4);
      expect(dice.toString(), equals('4d10'));
    });

    test('Multiplication', () {
      num amt = 10;
      var dice = Dice.d12 * amt;
      expect(dice.amount, amt);
    });

    test('Equality', () {
      var compare = {
        Dice(4): Dice.d4,
        Dice(6): Dice.d6,
        Dice(8): Dice.d8,
        Dice(10): Dice.d10,
        Dice(12): Dice.d12,
        Dice(20): Dice.d20,
      };
      for (var d in compare.keys) {
        expect(d, equals(compare[d]));
        expect(compare.values.where((el) => el == d).length, equals(1));
      }
    });

    test('Roll', () {
      var d1 = Dice.d6;
      var d2 = Dice.d12 * 2;
      var d3 = Dice.d8 * 3;
      var roll1 = d1.getRoll();
      var roll2 = d2.getRoll();
      var roll3 = d3.getRoll();

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
      var dice = Dice.d6;
      var roll = dice.getRoll();
      expect(roll.results[0], greaterThanOrEqualTo(1));
      expect(roll.results[0], lessThanOrEqualTo(6));
    });
  });
}
