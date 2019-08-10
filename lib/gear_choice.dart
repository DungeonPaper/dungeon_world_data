import 'package:dungeon_world_data/_base.dart';
import 'package:dungeon_world_data/tag.dart';
import 'package:dungeon_world_data/mappers.dart';
import 'package:meta/meta.dart';

class GearChoice extends DWEntity {
  String label;
  List<GearOption> list;

  GearChoice(this.label, this.list);

  GearChoice.parse(Map map) {
    label = map['label'];
    list = gearOptionMapper(map['list']);
  }

  @override
  Map toJSON() {
    return {
      'label': label,
      'list': listMapper<GearOption, Map>(list, (i) => i.toJSON()),
    };
  }
}

class GearOption extends DWEntity {
  String name;
  List<Tag> tags;

  GearOption({
    @required this.name,
    @required this.tags,
  });

  GearOption.parse(String str) {
    num openParen = str.indexOf('(');
    num closeParen = str.indexOf(')');
    name = str.substring(0, openParen > -1 ? openParen : null);
    String rawTags = openParen > -1 && closeParen > -1
        ? str.substring(openParen + 1, closeParen)
        : '';
    tags = rawTags.isNotEmpty
        ? rawTags.split(',').map((tag) => Tag.parse(tag.trim())).toList()
        : [];
  }

  @override
  toJSON() {
    return {
      'name': name,
      'tags': tags,
    };
  }
}
