import 'package:test/test.dart';
import 'package:dungeon_world_data/player_class.dart';
import 'package:dungeon_world_data/dw_data.dart';

void main() {
  group('PlayerClass', () {
    test('Key', () {
      PlayerClass playerClass = dungeonWorld.classes['paladin'];
      expect(playerClass.key, equals('paladin'));
    });
  });
}
