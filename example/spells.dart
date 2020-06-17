import 'package:dungeon_world_data/dw_data.dart';

void main() {
  // Get all spells
  var spell1 = dungeonWorld.spells.first;

  // Get spells for class
  var wizard = DWEntity.getByKey('wizard', dungeonWorld.classes);
  var spells1 = wizard.spells;
}
