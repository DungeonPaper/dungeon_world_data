import 'package:dungeon_world_data/mappers.dart';
import 'package:dungeon_world_data/tag.dart';

class Equipment {
  /** Equipment name */
  final String name;
  /** Equipment tags */
  final List<Tag> tags;
  /** Equipment key */
  final String key;

  Equipment(this.name, this.tags, this.key);

  @override
  toString() => '$name, tags: $tags';

  static Equipment fromJSON(Map map) => Equipment(
        map['name'],
        listMapper(map['tags'], (i) => Tag.parse(i)),
        map['key'],
      );
}
