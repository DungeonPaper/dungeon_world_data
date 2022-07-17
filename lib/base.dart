import 'package:dungeon_world_data/dungeon_world_data.dart';

mixin KeyMixin {
  /// This entity's unique key
  abstract final String key;

  String get displayName;

  EntityReference get reference => EntityReference(
        key: key,
        name: displayName,
        type: runtimeType.toString(),
      );
}
