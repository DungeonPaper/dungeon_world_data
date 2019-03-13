import 'package:dungeon_world_data/_base.dart';

class Tag extends DWEntity {
  /// Tag or feature name
  final String name;

  /// Value, if applicable
  final Map<String, dynamic> values;

  /// Returns whether this tag has a corresponding value or not
  final bool hasValue;

  Tag(this.name, [this.values])
      : hasValue = values is Map && values.values.any((v) => v != null) ||
            values is List && values.isNotEmpty ||
            values != null;

  @override
  toString() => values != null ? '$name: $values' : name;

  /// Returns a value from the `values` map, if it exists.
  /// Falls back to `defaultValue`
  T get<T>(String key, [T defaultValue]) {
    if (values.containsKey(key)) {
      return values[key];
    }
    return defaultValue;
  }

  static Tag parse(obj) {
    if (obj is Map) {
      String key = obj.keys.first;

      return Tag(key, obj);
    }
    if (obj == '') {
      return null;
    }
    return Tag(obj);
  }

  @override
  dynamic toJSON() {
    return hasValue ? {name: values} : name;
  }
}
