import 'package:meta/meta.dart';
import 'dw_entity.dart';
import 'tag.dart';
import 'mappers.dart';

class Equipment extends DWEntity {
  /// Equipment name
  String name;

  /// Equipment name, in plural
  String pluralName;

  /// Item description
  String description;

  /// Equipment tags
  List<Tag> tags;

  Equipment({
    String key,
    @required this.name,
    String pluralName,
    @required this.description,
    @required this.tags,
  })  : pluralName = pluralName ?? _calcPluralName(name),
        super(key: key ?? DWEntity.generateKey(name));

  @override
  String toString() => '$name: $description (tags: $tags)';

  factory Equipment.fromJSON(Map map) => Equipment(
        key: map['key'],
        name: map['name'],
        pluralName: map['plural_name'],
        description: map['description'],
        tags: listMapper(map['tags'], (i) => Tag.fromJSON(i)),
      );

  @override
  Map toJSON() {
    return {
      'name': name,
      'tags': listMapper<Tag, dynamic, Tag>(tags, (t) => t.toJSON()),
      'description': description,
      'plural_name': pluralName,
      'key': key,
    };
  }

  @override
  Equipment copy() {
    return Equipment.fromJSON(toJSON());
  }

  static String _calcPluralName(String name) => '${name}s';
}
