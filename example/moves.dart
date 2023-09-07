import 'package:dungeon_world_data/_old/dw_data.dart';

void main() {
  var bard = DWEntity.getByKey('bard', dungeonWorld.classes);
  var thief = DWEntity.getByKey('thief', dungeonWorld.classes);

  // Flattened move lists
  var moves1 = bard.advancedMoves1;
  var moves2 = dungeonWorld.basicMoves.first;
  var moves3 = thief.startingMoves;
}
