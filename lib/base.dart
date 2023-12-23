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
        type: _typeResolver?.call(runtimeType) ??
            defaultTypeResolver(runtimeType),
      );
}

String defaultTypeResolver(Type type) {
  switch (type) {
    case == Move:
      return 'Move';
    case == Spell:
      return 'Spell';
    case == Item:
      return 'Item';
    case == CharacterClass:
      return 'CharacterClass';
    case == Race:
      return 'Race';
    case == GearSelection:
      return 'GearSelection';
    case == MoveCategory:
      return 'MoveCategory';
    case == Tag:
      return 'Tag';
    case == Dice:
      return 'Dice';
    default:
      final typeString = type.toString();
      final match = RegExp(r'\w+', caseSensitive: false).firstMatch(typeString);
      return match?.group(0) ?? typeString;
  }
}

String? Function(Type)? _typeResolver;

/// Register a type resolver for a given type to be used with EntityReference.
///
/// A type resolver is a function that takes a type and returns a string representing that type, to be used for
/// serialization/deserialization.
/// It is only mandatory in minified environments like Flutter web, where entity names are mangled.
///
/// If no type resolver is registered for a given type, or the resolver returns null,
/// the default type resolver will be used.
///
/// See [resetEntityTypeResolver]
void registerEntityTypeResolver(String Function(Type) typeResolver) {
  _typeResolver = typeResolver;
}

/// Resets the type resolver to the default.
///
/// A type resolver is a function that takes a type and returns a string representing that type, to be used for
/// serialization/deserialization.
/// It is only mandatory in minified environments like Flutter web, where entity names are mangled.
///
/// If no type resolver is registered for a given type, or the resolver returns null,
/// the default type resolver will be used.
///
/// See [registerEntityTypeResolver]
resetEntityTypeResolver() {
  _typeResolver = null;
}

