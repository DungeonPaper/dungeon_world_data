import 'package:dungeon_world_data/_base.dart';
import 'package:dungeon_world_data/tag.dart';
import 'package:dungeon_world_data/mappers.dart';
import 'package:meta/meta.dart';
import 'package:uuid/uuid.dart';

class GearChoice extends DWEntity {
  String key;
  String label;
  List<GearOption> gearOptions;

  GearChoice({
    String key,
    @required this.label,
    @required this.gearOptions,
  }) : key = key ?? Uuid().v4();

  factory GearChoice.fromJSON(Map map) => GearChoice(
        key: map['key'],
        label: map['label'],
        gearOptions: gearOptionMapper(map['list']),
      );

  @override
  Map toJSON() => {
        'key': key,
        'label': label,
        'list': listMapper<GearOption, Map>(gearOptions, (i) => i.toJSON()),
      };

  @override
  GearChoice copy() => GearChoice.fromJSON(toJSON());
}

class GearOption extends DWEntity {
  String key;
  String name;
  List<Tag> tags;

  GearOption({
    String key,
    @required this.name,
    @required this.tags,
  }) : key = key ?? Uuid().v4();

  factory GearOption.fromJSON(Map map) => GearOption(
        key: map['key'],
        name: map['name'],
        tags: listMapper(map['tags'], (t) => Tag.fromJSON(t)),
      );

  factory GearOption.parse(String str) {
    final num openParen = str.indexOf('(');
    final num closeParen = str.indexOf(')');
    final String name = str.substring(0, openParen > -1 ? openParen : null);
    final String rawTags = openParen > -1 && closeParen > -1
        ? str.substring(openParen + 1, closeParen)
        : '';
    final List<Tag> tags = rawTags.isNotEmpty
        ? rawTags.split(',').map((tag) => Tag.fromJSON(tag.trim())).toList()
        : [];
    return GearOption(name: name, tags: tags);
  }

  @override
  Map toJSON() => {
        'name': name,
        'tags': tags,
      };

  @override
  GearOption copy() => GearOption.fromJSON(toJSON());
}
