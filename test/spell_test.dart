import 'package:test/test.dart';
import 'package:dungeon_world_data/dw_data.dart';

void main() {
  group('Spells', () {
    test('Key', () {
      var equipment = dungeonWorld.spells.firstWhere((k) => k.key == 'plague');
      expect(equipment.key, equals('plague'));
    });

    test('toJSON', () {
      var equipment = dungeonWorld.spells.firstWhere((k) => k.key == 'plague');
      expect(equipment.toJSON()['tags'], contains('ongoing'));
      var json = equipment.toJSON();
      expect(json['key'], equals('plague'));
      expect(json['name'], equals('Plague'));
      expect(
          json['description'],
          equals(
              'Name a city, town, encampment, or other place where people live. As long as this spell is active that place is beset by a plague appropriate to your deity’s domains (locusts, death of the first born, etc.) While this spell is ongoing you take -1 to cast a spell.'));
      expect(json['level'], equals('9'));
      expect(json['tags'], contains('ongoing'));
    });
  });
}
