import 'package:test/test.dart';
import 'package:dungeon_world_data/dw_data.dart';

void main() {
  group('Equipment', () {
    test('Key', () {
      var equipment =
          dungeonWorld.equipment.firstWhere((k) => k.key == 'tricksy_rope');
      expect(equipment.key, equals('tricksy_rope'));
    });
  });
}
