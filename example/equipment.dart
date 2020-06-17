import 'package:dungeon_world_data/dw_data.dart';

void main() {
  // Get inventory items
  var equipment1 = dungeonWorld.equipment.first;

  // Get gear choices for class

  var bard = DWEntity.getByKey('bard', dungeonWorld.classes);
  var gearChoices1 = bard.gearChoices.map((i) => i.toJSON()).toList();
  ;
}
