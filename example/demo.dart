import 'package:dungeon_world_data/dw_data.dart';

void main() {
  // Get all monsters
  print(dungeonWorld.monsters.values.map((monster) => monster.name));

  // Get all bard advanced moves
  print(dungeonWorld.advancedMoves['bard'].map((move) => move.name));

  // Get fighter class
  print(dungeonWorld.classes['bard']);
}
