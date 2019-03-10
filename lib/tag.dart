import 'package:dungeon_world_data/_base.dart';

class Tag extends DWEntity {
  /// Tag or feature name
  final String name;

  /// Value, if applicable
  final dynamic value;

  /// Returns whether this tag has a corresponding value or not
  final bool hasValue;

  Tag(this.name, [this.value]) : hasValue = value != null;

  @override
  toString() => value != null ? '$name: $value' : name;

  static Tag parse(obj) {
    if (obj is Map) {
      String key = obj.keys.first;
      return Tag(key, obj[key]);
    }
    if (obj == '') {
      return null;
    }
    return Tag(obj);
  }

  @override
  Map toJSON() {
    return hasValue ? {name: value} : name;
  }
}
