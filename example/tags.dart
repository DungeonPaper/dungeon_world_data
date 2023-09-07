import 'package:dungeon_world_data/_old/dw_data.dart';

void main() {
  // Parse tags from objects or strings
  var tag1 = Tag.fromJSON({'weight': 1});
  var tag2 = Tag.fromJSON('{coins: 3}');
  var tag3 = Tag.fromJSON('close');

  // All info tags
  var tagInfos = dungeonWorld.tags;

  // Get tags from spells, equipment
  var tags1 = dungeonWorld.spells.first.tags;
}
