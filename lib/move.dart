import 'package:dungeon_world_data/_base.dart';
import 'package:dungeon_world_data/mappers.dart';
import 'package:meta/meta.dart';

class Move extends DWEntity {
  /// Move unique identifier
  String key;

  /// Move name
  String name;

  /// Move description
  String description;

  /// Move explanation
  String explanation;

  /// Classes that can use this move.
  /// The keys correspond to the `PlayerClass` key.
  List<String> classes;

  Move({
    @required this.name,
    @required this.description,
    @required this.explanation,
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
        explanation: map['explanation'],
      );

  @override
  Map toJSON() {
    return {
      'key': key,
      'name': name,
      'classes': classes,
      'description': description,
      'explanation': explanation,
    };
  }
}
