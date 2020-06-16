import 'package:dungeon_world_data/dw_data.dart';

void main() {
  var bard = dungeonWorld.classes.firstWhere((k) => k.key == 'bard');
  var thief = dungeonWorld.classes.firstWhere((k) => k.key == 'thief');

  // Flattened move lists
  var moves1 = bard.advancedMoves1;
  var moves2 = dungeonWorld.basicMoves.first;
  var moves3 = thief.startingMoves;
}
