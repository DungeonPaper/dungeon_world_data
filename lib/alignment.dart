import 'package:dungeon_world_data/_base.dart';
import 'package:uuid/uuid.dart';

class Alignment extends DWEntity {
  /// Alignment key
  String key;

  /// Alignment name
  String name;

  /// Alignment description
  String description;

  Alignment(this.key, this.name, this.description);

  factory Alignment.fromJSON(Map map) =>
      Alignment(map['key'] ?? Uuid().v4(), map['name'], map['description']);

  @override
  Map toJSON() => {
      'key': key,
      'name': name,
      'description': description,
    };

  @override
  Alignment copy() => Alignment.fromJSON(toJSON());
}
