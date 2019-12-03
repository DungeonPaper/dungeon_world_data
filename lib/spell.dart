import 'package:dungeon_world_data/_base.dart';
import 'package:dungeon_world_data/mappers.dart';
import 'package:dungeon_world_data/tag.dart';
import 'package:meta/meta.dart';

class Spell extends DWEntity {
  /// Spell key
  String key;

  /// Spell name
  String name;

  /// Spell description
  String description;

  /// Spell level
  String level;

  /// Spell tags
  List<Tag> tags;

  Spell({
    @required this.key,
    @required this.name,
    @required this.description,
    @required this.level,
    @required this.tags,
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
      'tags': listMapper<Tag, dynamic>(tags, (tag) => tag.toJSON()),
    };
  }

  @override
  Spell copy() => Spell.fromJSON(toJSON());
}
