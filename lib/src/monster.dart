part of '_dungeon_world_data.dart';

class Monster extends DWEntity {
  /// Monster name
  String name;

  /// Monster description
  String description;

  /// Monster instinct
  String instinct;

  /// Monster tags
  List<Tag> tags;

  /// Monster moves
  List<String> moves;

  Monster({
    String key,
    @required this.name,
    @required this.description,
    @required this.instinct,
    @required this.tags,
    @required this.moves,
  }) : super(key: key ?? DWEntity.generateKey(name));

  @override
  String toString() =>
      '$name\n  tags: $tags,\n  moves: ${moves}\n  instinct: $instinct';

  static Monster fromJSON(Map map) => Monster(
      key: map['key'],
      name: map['name'],
      description: map['description'],
      instinct: map['instinct'],
      tags: listMapper(map['tags'], (i) => Tag.fromJSON(i)),
      moves: listMapper(map['moves'], (i) => i.toString()));

  @override
  Map toJSON() {
    return {
      'key': key,
      'name': name,
      'description': description,
      'instinct': instinct,
      'tags': listMapper<Tag, dynamic, Tag>(tags, (tag) => tag.toJSON()),
      'moves': moves,
    };
  }

  @override
  Monster copy() => Monster.fromJSON(toJSON());
}
