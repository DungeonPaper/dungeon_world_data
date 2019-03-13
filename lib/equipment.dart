import 'package:dungeon_world_data/_base.dart';
import 'package:dungeon_world_data/mappers.dart';
import 'package:dungeon_world_data/tag.dart';

class Equipment extends DWEntity {
  /// Equipment key
  final String key;

  /// Equipment name
  final String name;

  /// Equipment tags
  final List<Tag> tags;

  Equipment(this.name, this.tags, this.key);

  @override
  toString() => '$name, tags: $tags';

  static Equipment fromJSON(Map map) => Equipment(
        map['name'],
        listMapper(map['tags'], (i) => Tag.parse(i)),
        map['key'],
      );

  @override
  Map toJSON() {
    return {
      'name': name,
      'tags': tags,
      'key': key,
    };
  }
}
