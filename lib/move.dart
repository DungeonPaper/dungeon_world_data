import 'package:dungeon_world_data/_base.dart';
import 'package:dungeon_world_data/mappers.dart';
import 'package:meta/meta.dart';

class Move extends DWEntity {
  /// Move unique identifier
  final String key;

  /// Move name
  final String name;

  /// Move description
  final String description;

  /// Classes that can use this move.
  /// The keys correspond to the `PlayerClass` key.
  final List<String> classes;

  Move({
    @required this.name,
    @required this.description,
    @required this.key,
    @required this.classes,
  });

  static Move fromJSON(Map map) => Move(
        key: map['key'],
        name: map['name'],
        classes: map['classes'] != null
            ? listMapper(map['classes'], (j) => j.toString())
            : [],
        description: map['description'],
      );

  @override
  Map toJSON() {
    return {
      'key': key,
      'name': name,
      'classes': classes,
      'description': description,
    };
  }
}
