import 'package:dungeon_world_data/_base.dart';
import 'package:dungeon_world_data/mappers.dart';
import 'package:dungeon_world_data/tag.dart';
import 'package:meta/meta.dart';

class Equipment extends DWEntity {
  /// Equipment key
  final String key;

  /// Equipment name
  final String name;

  /// Equipment name, in plural
  final String pluralName;

  /// Item description
  final String description;

  /// Equipment tags
  final List<Tag> tags;

  Equipment({
    @required this.name,
    @required this.pluralName,
    @required this.description,
    @required this.tags,
    @required this.key,
  });

  @override
  toString() => '$name: $description (tags: $tags)';

  static Equipment fromJSON(Map map) => Equipment(
        key: map['key'],
        name: map['name'],
        pluralName: map['plural_name'],
        description: map['description'],
        tags: listMapper(map['tags'], (i) => Tag.parse(i)),
      );

  @override
  Map toJSON() {
    return {
      'name': name,
      'tags': listMapper<Tag, dynamic>(tags, (t) => t.toJSON()),
      'key': key,
    };
  }
}
