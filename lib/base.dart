import 'package:dungeon_world_data/dungeon_world_data.dart';

/// This mixin ensures a key and a display name for an entity.
mixin KeyMixin {
  /// This entity's unique key
  abstract final String key;

  /// This entity's display name, as the user would see it
  String get displayName;

  /// Get a reference to this entity, which can be used to look it up in a repository.
  EntityReference get reference => EntityReference(
        key: key,
        name: displayName,
        type: runtimeType.toString(),
      );
}
