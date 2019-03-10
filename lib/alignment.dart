import 'package:dungeon_world_data/_base.dart';

class Alignment extends DWEntity {
  /// Alignment name
  final String name;

  /// Alignment description
  final String description;

  Alignment(this.name, this.description);

  @override
  Map toJSON() {
    return {
      'name': name,
      'description': description,
    };
  }
}
