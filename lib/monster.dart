import 'package:dungeon_world_data/_base.dart';
import 'package:dungeon_world_data/mappers.dart';
import 'package:dungeon_world_data/tag.dart';

class Monster extends DWEntity {
  /** Monster key */
  final String key;
  /** Monster name */
  final String name;
  /** Monster description */
  final String description;
  /** Monster instinct */
  final String instinct;
  /** Monster tags */
  final List<Tag> tags;
  /** Monster moves */
  final List<String> moves;

  Monster({
    this.key,
    this.name,
    this.description,
    this.instinct,
    this.tags,
    this.moves,
  });

  @override
  toString() =>
      '$name\n  tags: $tags,\n  moves: ${moves}\n  instinct: $instinct';

  static Monster fromJSON(Map map) => Monster(
      key: map['key'],
      name: map['name'],
      description: map['description'],
      instinct: map['instinct'],
      tags: listMapper(map['tags'], (i) => Tag.parse(i)),
      moves: listMapper(map['moves'], (i) => i.toString()));

  @override
  Map toJSON() {
    return {
      'key': key,
      'name': name,
      'description': description,
      'instinct': instinct,
      'tags': listMapper<Tag, Map>(tags, (tag) => tag.toJSON()),
      'moves': moves,
    };
  }
}
