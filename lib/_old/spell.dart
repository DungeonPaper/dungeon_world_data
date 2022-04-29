import 'dw_entity.dart';
import 'mappers.dart';
import 'tag.dart';

class Spell extends DWEntity {
  /// Spell name
  String name;

  /// Spell description
  String description;

  /// Spell level
  String level;

  /// Spell tags
  List<Tag> tags;

  /// Spell classes
  List<String> classKeys;

  Spell({
    String? key,
    required this.name,
    required this.description,
    required this.level,
    required this.tags,
    required this.classKeys,
  }) : super(key: key ?? DWEntity.generateKey(name));

  static Spell fromJSON(Map map) => Spell(
        key: map['key'],
        name: map['name'],
        description: map['description'],
        classKeys: map['classKeys'] ?? [],
        level: map['level'].toString(),
        tags: listMapper(map['tags'], (dynamic i) => Tag.fromJSON(i)),
      );

  @override
  String toString() => '$name ($level)';

  @override
  Map toJSON() {
    return {
      'key': key,
      'name': name,
      'description': description,
      'classKeys': classKeys,
      'level': level,
      'tags': listMapper<Tag, dynamic, Tag>(tags, (tag) => tag.toJSON()),
    };
  }

  @override
  Spell copy() => Spell.fromJSON(toJSON());
}
