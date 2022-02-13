import 'package:test/test.dart';
import 'package:dungeon_world_data/_old/dw_data.dart';

void main() {
  group('Equipment', () {
    test('Key', () {
      var equipment =
          DWEntity.getByKey('tricksy_rope', dungeonWorld.equipment)!;
      expect(equipment.key, equals('tricksy_rope'));
    });
  });
}
