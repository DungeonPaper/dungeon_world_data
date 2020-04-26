part of '_dungeon_world_data.dart';

abstract class DWEntity {
  String key;

  DWEntity({String key}) {
    this.key = key ?? DWEntity.generateKey(null);
  }

  /// Generates unique key for identification.
  ///
  /// If a non-empty String identifier is supplied, it is cleaned up of non-alphabetic characters
  /// and turned to lowercase.
  ///
  /// Otherwise, a `Uuid().v4()` is generated for it.
  static String generateKey(String identifier) =>
      identifier != null && identifier.trim().isNotEmpty
          ? identifier
              .trim()
              .replaceAll(RegExp(r'[^a-z]+', caseSensitive: false), ' ')
              .trim()
              .replaceAll(RegExp('\\s+'), '_')
              .toLowerCase()
          : Uuid().v4();

  @override
  int get hashCode => hash2(runtimeType, key);

  @override
  bool operator ==(obj) => obj.hashCode == hashCode;

  /// Returns a JSON representation of this object.
  dynamic toJSON();

  /// Creates a new instance of this identity, using the existing previous values.
  DWEntity copy();
}

// typedef Key = String Function(String);
