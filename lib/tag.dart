import 'package:dungeon_world_data/_base.dart';

class Tag<T> extends DWEntity {
  static Map<String, String> tagInfoCache = {};

  /// Tag or feature name
  String name;

  /// Value, if applicable
  T value;

  String description;

  Tag(this.name, [this.value, this.description]) {
    if (description != null &&
        description.isNotEmpty &&
        !tagInfoCache.containsKey(key)) {
      tagInfoCache[key] = description;
    } else if (description == null ||
        description.isEmpty && tagInfoCache.containsKey(key)) {
      description = tagInfoCache[key];
    }
  }

  @override
  toString() => hasValue ? '$name: $value' : name;

  /// Returns whether this tag has a corresponding value or not
  bool get hasValue => value != null;

  String get key => DWEntity.generateKey(name);

  factory Tag.fromJSON(obj) {
    if (obj is String) {
      if (obj == '') {
        return null;
      }
      RegExp amountThenName = RegExp('([0-9]+)\\s(.*)');
      if (amountThenName.hasMatch(obj)) {
        Match match = amountThenName.allMatches(obj).toList().first;
        String name = match.group(2);
        int value = int.tryParse(match.group(1));
        return Tag(name, value as dynamic);
      }
    }

    if (obj is Map) {
      String key = obj.keys.first.toString();
      return Tag(key, obj[key]);
    }

    return Tag(obj);
  }

  @override
  dynamic toJSON() {
    return hasValue ? {name: value} : name;
  }

  @override
  Tag copy() => Tag.fromJSON(toJSON());
}
