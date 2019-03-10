import 'package:dungeon_world_data/_base.dart';
import 'package:dungeon_world_data/mappers.dart';
import 'package:dungeon_world_data/tag.dart';

class Spell extends DWEntity {
  /// Spell key
  final String key;

  /// Spell name
  final String name;

  /// Spell description
  final String description;

  /// Spell level
  final String level;

  /// Spell tags
  final List<Tag> tags;

  Spell({
    this.key,
    this.name,
    this.description,
    this.level,
    this.tags,
  });

  static Spell fromJSON(Map map) => Spell(
        key: map['key'],
        name: map['name'],
        description: map['description'],
        level: map['level'].toString(),
        tags: listMapper(map['tags'], (i) => Tag.parse(i)),
      );

  @override
  String toString() => '$name ($level)';

  @override
  Map toJSON() {
    return {
      'key': key,
      'name': name,
      'description': description,
      'level': level,
      'tags': listMapper<Tag, Map>(tags, (tag) => tag.toJSON()),
    };
  }
}
