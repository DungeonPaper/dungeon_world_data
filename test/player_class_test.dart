import 'package:test/test.dart';
import 'package:dungeon_world_data/dw_data.dart';

void main() {
  group('PlayerClass', () {
    test('Key', () {
      var paladin = DWEntity.getByKey('paladin', dungeonWorld.classes)!;
      expect(paladin.key, equals('paladin'));
    });
  });
}
