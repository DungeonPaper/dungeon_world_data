import 'package:uuid/uuid.dart';

abstract class DWEntity {
  String key;

  DWEntity({String key}) {
    this.key = key ?? DWEntity.generateKey(null);
  }

  static String generateKey(String identifier) =>
      identifier != null && identifier.trim().isNotEmpty
          ? identifier
              .trim()
              .replaceAll(RegExp(r'[^a-z]+', caseSensitive: false), ' ')
              .trim()
              .replaceAll(RegExp('\\s+'), '_')
              .toLowerCase()
          : Uuid().v4();

  // static DWEntity fromJSON(Map map);
  dynamic toJSON();

  DWEntity copy();
}

// typedef Key = String Function(String);
