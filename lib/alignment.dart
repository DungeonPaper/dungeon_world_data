import 'package:dungeon_world_data/_base.dart';

class Alignment extends DWEntity {
  /// Alignment key
  final String key;

  /// Alignment name
  final String name;

  /// Alignment description
  final String description;

  Alignment(this.key, this.name, this.description);

  @override
  Map toJSON() {
    return {
      'name': name,
      'description': description,
    };
  }
}
