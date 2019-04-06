import 'package:dungeon_world_data/_base.dart';

class Alignment extends DWEntity {
  /// Alignment key
  String key;

  /// Alignment name
  String name;

  /// Alignment description
  String description;

  Alignment(this.key, this.name, this.description);

  @override
  Map toJSON() {
    return {
      'name': name,
      'description': description,
    };
  }
}
