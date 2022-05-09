import 'package:dungeon_world_data/_old/tag.dart';
import 'dw_entity.dart';
import 'mappers.dart';

class GearChoice extends DWEntity {
  /// Description of choices, possibly with other benefits to the stats.
  String label;

  /// The list of options to choose from. `label` should specify how many to choose.
  List<GearOption> gearOptions;

  // [start, end] as indexes, [-1] for all, [] (default) for none
  List<int> preselect;

  int? maxSelections;

  GearChoice({
    String? key,
    required this.label,
    required this.gearOptions,
    this.preselect = const [],
    this.maxSelections,
  }) : super(key: key);

  factory GearChoice.fromJSON(Map map) => GearChoice(
        key: map['key'],
        label: map['label'],
        gearOptions: gearOptionMapper(map['list']),
        preselect: map['preselect'] ?? [],
        maxSelections: map['maxSelections'],
      );

  @override
  Map toJSON() => {
        'key': key,
        'label': label,
        'list': listMapper<GearOption, dynamic, GearOption>(gearOptions, (i) => i.toJSON()),
        'preselect': preselect,
        'maxSelections': maxSelections,
      };

  List<GearOption> get preselectedGearOptions => preselect.isEmpty
      ? []
      : preselect.first == -1
          ? gearOptions
          : gearOptions.sublist(preselect.first, preselect.last);

  @override
  GearChoice copy() => GearChoice.fromJSON(toJSON());
}

class GearOption extends DWEntity {
  // String key;
  String name;
  List<Tag> tags;

  GearOption({
    String? key,
    required this.name,
    required this.tags,
  }) : super(key: key ?? DWEntity.generateKey(name));

  factory GearOption.fromJSON(Map map) => GearOption(
        key: map['key'],
        name: map['name'],
        tags: listMapper(map['tags'], (dynamic t) => Tag.fromJSON(t)),
      );

  factory GearOption.parse(dynamic str) {
    if (str is Map) {
      return GearOption.fromJSON(str);
    }
    final num openParen = str.indexOf('(');
    final num? closeParen = str.indexOf(')');
    final name = str.substring(0, openParen > -1 ? openParen : null);
    final rawTags =
        openParen > -1 && closeParen! > -1 ? str.substring(openParen + 1, closeParen) : '';
    final tags = rawTags.isNotEmpty
        ? rawTags.split(',').map((tag) => Tag.fromJSON(tag.trim())).toList()
        : [];
    return GearOption(name: name, tags: tags);
  }

  @override
  dynamic toJSON() => {
        'name': name,
        'tags': listMapper<Tag, dynamic, Tag>(tags, (t) => t.toJSON()),
      };

  @override
  GearOption copy() => GearOption.fromJSON(toJSON());
}
