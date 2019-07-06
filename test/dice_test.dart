import 'package:dungeon_world_data/dice.dart';
import 'package:test/test.dart';

void main() {
  test('Dice sides and amount', () {
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

  test('Dice equality', () {
    Dice dice = Dice(12);
    expect(dice, equals(Dice.d12));
  });
}
