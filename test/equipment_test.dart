import 'package:test/test.dart';
import 'package:dungeon_world_data/equipment.dart';
import 'package:dungeon_world_data/dw_data.dart';

void main() {
  group('Equipment', () {
    test('Key', () {
      Equipment equipment = dungeonWorld.equipment['tricksy_rope'];
      expect(equipment.key, equals('tricksy_rope'));
    });
  });
}
