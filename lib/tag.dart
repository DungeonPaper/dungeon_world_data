import 'package:dungeon_world_data/_base.dart';

class Tag extends DWEntity {
  /// Tag or feature name
  String name;

  /// Value, if applicable
  Map values;

  /// Returns whether this tag has a corresponding value or not
  bool hasValues;

  Tag(this.name, [this.values])
      : hasValues = values is Map && values.values.any((v) => v != null) ||
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
    if (obj is String) {
      if (obj == '') {
        return null;
      }
      RegExp amountThenName = RegExp('([0-9]+)\\s(.*)');
      if (amountThenName.hasMatch(obj)) {
        Match match = amountThenName.allMatches(obj).toList().first;
        String name = match.group(2);
        String value = match.group(1);
        return Tag(name, {name: value});
      }
    }

    if (obj is Map) {
      String key = obj.keys.first.toString();

      return Tag(key, obj);
    }

    return Tag(obj);
  }

  @override
  dynamic toJSON() {
    return hasValues ? values : name;
  }
}
