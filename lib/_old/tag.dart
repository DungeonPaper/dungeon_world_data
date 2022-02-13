import 'dw_entity.dart';

class Tag<T> extends DWEntity {
  static Map<String, String > tagInfoCache = {};

  /// Tag or feature name
  String name;

  /// Value, if applicable
  T? value;

  String? description;

  Tag(this.name, [this.value, this.description]) : super(key: name) {
    if (description != null &&
        description!.isNotEmpty &&
        !tagInfoCache.containsKey(key)) {
      tagInfoCache[key] = description!;
    } else if (description == null ||
        description!.isEmpty && tagInfoCache.containsKey(key)) {
      description = tagInfoCache[key];
    }
  }

  @override
  String toString() => hasValue ? '$name: $value' : name;

  /// Returns whether this tag has a corresponding value or not
  bool get hasValue => value != null;

  @override
  String get key => DWEntity.generateKey(name);

  factory Tag.fromJSON(obj) {
    if (obj is String) {
      if (obj == '') {
        throw TypeError();
      }
      var amountThenName = RegExp('([0-9]+)\\s(.*)');
      if (amountThenName.hasMatch(obj)) {
        var match = amountThenName.allMatches(obj).toList().first;
        var name = match.group(2)!;
        var value = int.tryParse(match.group(1)!);
        return Tag(name, value as dynamic);
      }
      var mapLike = RegExp('\\{(.*):\\s?([+-]?[0-9]+)\\}');

      if (mapLike.hasMatch(obj)) {
        var match = mapLike.allMatches(obj).toList().first;
        var name = match.group(1)!;
        var value = int.tryParse(match.group(2)!);
        return Tag(name, value as dynamic);
      }
    }

    if (obj is Map) {
      var key = obj.keys.first.toString();
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
