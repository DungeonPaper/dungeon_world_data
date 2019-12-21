import 'package:test/test.dart';
import 'package:dungeon_world_data/dw_data.dart';

void main() {
  group('PlayerClass', () {
    test('Key', () {
      var playerClass =
          dungeonWorld.classes.firstWhere((k) => k.key == 'paladin');
      expect(playerClass.key, equals('paladin'));
    });
  });
}
