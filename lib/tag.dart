import 'package:dungeon_world_data/_base.dart';
import 'package:dungeon_world_data/tag_pre_parser.dart' as tagParser;

class Tag<T> extends DWEntity {
  /// Tag or feature name
  String name;

  /// Value, if applicable
  T value;

  String description;

  Tag(this.name, [this.value, this.description]) {
    if (tagParser.isParsed)
      description ??= tagParser.ALL_TAGS.values
          .firstWhere((t) => t.name == name, orElse: () => null)
          ?.description;
  }

  @override
  toString() => hasValue ? '$name: $value' : name;

  /// Returns whether this tag has a corresponding value or not
  bool get hasValue => value != null;

  String get key => name.replaceAll(RegExp(r'[^a-z]+'), '_').toLowerCase();

  static Tag parse(obj) {
    if (obj is String) {
      if (obj == '') {
        return null;
      }
      RegExp amountThenName = RegExp('([0-9]+)\\s(.*)');
      if (amountThenName.hasMatch(obj)) {
        Match match = amountThenName.allMatches(obj).toList().first;
        String name = match.group(2);
        int value = int.tryParse(match.group(1));
        return Tag<num>(name, value);
      }
    }

    if (obj is Map) {
      String key = obj.keys.first.toString();
      return Tag(key, obj[key]);
    }

    return Tag(obj);
  }

  @override
  Map toJSON() {
    return hasValue ? {name: value} : (name as dynamic);
  }

  @override
  Tag copy() => Tag.parse(toJSON());
}
