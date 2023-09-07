import 'package:dungeon_world_data/dice.dart';
import 'package:test/test.dart';

void main() {
  group('Dice', () {
    group("Parse JSON", () {
      test("No modifier", () {
        var str = "1d6";
        var dice = Dice.fromJson(str);
        expect(dice.amount, equals(1));
        expect(dice.sides, equals(6));
        expect(dice.modifierValue, equals(null));
        expect(dice.modifierStat, equals(null));
        expect(dice.modifierSign, equals('+'));
      });
      test("With positive modifier", () {
        var str = "3d8+3";
        var dice = Dice.fromJson(str);
        expect(dice.amount, equals(3));
        expect(dice.sides, equals(8));
        expect(dice.modifierValue, equals(3));
        expect(dice.modifierStat, equals(null));
        expect(dice.modifierSign, equals('+'));
      });
      test("With negative modifier", () {
        var str = "2d20-4";
        var dice = Dice.fromJson(str);
        expect(dice.amount, equals(2));
        expect(dice.sides, equals(20));
        expect(dice.modifierValue, equals(-4));
        expect(dice.modifierStat, equals(null));
        expect(dice.modifierSign, equals('-'));
      });

      test("With stat modifier", () {
        var str = "1d6+DEX";
        var dice = Dice.fromJson(str);
        expect(dice.amount, equals(1));
        expect(dice.sides, equals(6));
        expect(dice.modifierValue, equals(null));
        expect(dice.modifierStat, equals("DEX"));
        expect(dice.modifierSign, equals('+'));
        expect(dice.needsModifier, equals(true));
        expect(() => dice.roll(), throwsException);
      });
    });

    group("Dump JSON", () {
      test("No modifier", () {
        var str = "1d6";
        var dice = Dice(amount: 1, sides: 6);
        expect(dice.toJson(), equals(str));
      });
      test("With positive modifier", () {
        var str = "3d8+3";
        var dice = Dice(amount: 3, sides: 8, modifierValue: 3);
        expect(dice.toJson(), equals(str));
      });
      test("With negative modifier", () {
        var str = "2d20-4";
        var dice = Dice(amount: 2, sides: 20, modifierValue: -4);
        expect(dice.toJson(), equals(str));
      });
      test("With stat modifier", () {
        var str = "2d20-DEX";
        var dice = Dice(amount: 2, sides: 20, modifierStat: "DEX", modifierSign: "-");
        expect(dice.toJson(), equals(str));
      });
    });
  });
}
