import 'package:dungeon_world_data/mappers.dart';

class Move {
  /** Move unique identifier */
  final String key;
  /** Move name */
  final String name;
  /** Move description */
  final String description;

  /** Classes that can use this move.
   * The keys correspond to the `PlayerClass` key. */
  final List<String> classes;

  Move({this.name, this.description, this.key, this.classes});

  static Move fromJSON(Map map) => Move(
        key: map['key'],
        name: map['name'],
        classes: map['classes'] != null
            ? listMapper(map['classes'], (j) => j.toString())
            : [],
        description: map['description'],
      );
}
