import 'package:dungeon_world_data/_base.dart';
import 'package:dungeon_world_data/mappers.dart';
import 'package:dungeon_world_data/tag.dart';
import 'package:meta/meta.dart';
import 'package:uuid/uuid.dart';

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
    String key,
    @required this.name,
    @required this.description,
    @required this.level,
    @required this.tags,
  }): key = key ?? Uuid().v4();

  static Spell fromJSON(Map map) => Spell(
        key: map['key'],
        name: map['name'],
        description: map['description'],
        level: map['level'].toString(),
        tags: listMapper(map['tags'], (i) => Tag.fromJSON(i)),
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
