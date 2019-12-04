import 'package:dungeon_world_data/_base.dart';
import 'package:meta/meta.dart';
import 'package:uuid/uuid.dart';

class Alignment extends DWEntity {
  /// Alignment key
  String key;

  /// Alignment name
  String name;

  /// Alignment description
  String description;

  Alignment({
    String key,
    @required this.name,
    @required this.description,
  }) : key = key ?? Uuid().v4();

  factory Alignment.fromJSON(Map map) => Alignment(
        key: map['key'],
        name: map['name'],
        description: map['description'],
      );

  @override
  Map toJSON() => {
        'key': key,
        'name': name,
        'description': description,
      };

  @override
  Alignment copy() => Alignment.fromJSON(toJSON());
}
