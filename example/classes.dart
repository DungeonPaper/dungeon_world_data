import 'package:dungeon_world_data/dw_data.dart';

void main() {
  // Get bard class
  var bard = dungeonWorld.classes.firstWhere((k) => k.key == 'bard');
  // Get all bard advanced moves

  var moves = bard.advancedMoves1;
}
