import 'package:dungeon_world_data/dw_data.dart';

void main() {
  // Get all spells
  var spell1 = dungeonWorld.spells.first;

  // Get spells for class
  var wizard = dungeonWorld.classes.firstWhere((k) => k.key == 'wizard');
  var spells1 = wizard.spells;
}
