import 'package:dungeon_world_data/dw_data.dart';

void main() {
  // Get all monsters
  print(dungeonWorld.monsters.map((monster) => monster.name));
  print('');

  // Get all bard advanced moves
  var bard = dungeonWorld.classes.firstWhere((k) {
    print(k.key);
    return k.key == 'bard';
  });
  print(bard.advancedMoves1.map((move) => move.name));
  print('');

  // Get fighter class
  print(bard);
  print('');

  // Get all spells
  print(dungeonWorld.spells.first);
  print('');

  // Get all inventory items
  print(dungeonWorld.equipment
      .where((i) => i.description != null)
      .toList()
      .join('\n\n'));
  print('');

  // Get gear choices for class
  print(bard.gearChoices.map((i) => i.toJSON()).toList());

  // Get starting moves for classs
  var thief = dungeonWorld.classes.firstWhere((k) => k.key == 'thief');
  var wizard = dungeonWorld.classes.firstWhere((k) => k.key == 'wizard');
  print(thief.startingMoves);
  print(wizard.spells);

  // Parse tags from objects or strings
  print(Tag.fromJSON({'weight': 1}));
  print(Tag.fromJSON('{coins: 3}'));
  print(Tag.fromJSON('close'));

  // All info tags
  print(dungeonWorld.tags);
}
