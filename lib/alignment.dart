import 'package:dungeon_world_data/_base.dart';
import 'package:meta/meta.dart';

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
  }) : super(key: key ?? DWEntity.generateKey(name));

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
