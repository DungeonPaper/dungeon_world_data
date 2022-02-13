import 'package:dungeon_world_data/_old/dw_data.dart';

void main() {
  // Get bard class
  var bard = DWEntity.getByKey('bard', dungeonWorld.classes);
  // Get all bard advanced moves

  var moves = bard.advancedMoves1;
}
