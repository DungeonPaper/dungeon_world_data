import 'dart:convert';

import 'base.dart';
import 'dice.dart';
import 'entity_reference.dart';
import 'tag.dart';

/// The category of a move.
enum MoveCategory {
  /// Starting move - attached to a class, given automatically.
  starting,

  /// Basic move - available to all classes.
  basic,

  /// Special move - available to all classes, but represent more advanced moves than basic.
  special,

  /// Advanced move - attached to a class, and given betweens levels 2 and 5.
  advanced1,

  /// Advanced move - attached to a class, and given betweens levels 6 and 10.
  advanced2,

  /// Other types of moves
  other,
}

class Move with KeyMixin {
  Move({
    required this.meta,
    required this.key,
    required this.name,
    required this.description,
    required this.explanation,
    required this.dice,
    required this.classKeys,
    required this.tags,
    required this.category,
  });

  final dynamic meta;

  @override
  final String key;

  /// The name of the move.
  final String name;

  /// The description of the move - what it does, and how it works mechanically.
  final String description;

  /// The explanation of the move - how it works in the fiction, examples or other details.
  final String explanation;

  /// The dice of the move - how many dice to roll, and what size.
  final List<Dice> dice;

  /// The class keys of the move - which classes can take this move.
  final List<EntityReference> classKeys;

  /// The tags of the move
  final List<Tag> tags;

  /// The category of the move
  final MoveCategory category;

  Move copyWith({
    dynamic meta,
    String? key,
    String? name,
    String? description,
    String? explanation,
    List<Dice>? dice,
    List<EntityReference>? classKeys,
    List<Tag>? tags,
    MoveCategory? category,
  }) =>
      Move(
        meta: meta ?? this.meta,
        key: key ?? this.key,
        name: name ?? this.name,
        description: description ?? this.description,
        explanation: explanation ?? this.explanation,
        dice: dice ?? this.dice,
        classKeys: classKeys ?? this.classKeys,
        tags: tags ?? this.tags,
        category: category ?? this.category,
      );

  factory Move.fromRawJson(String str) => Move.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Move.fromJson(Map<String, dynamic> json) => Move(
        meta: json["_meta"],
        key: json["key"],
        name: json["name"],
        description: json["description"],
        explanation: json["explanation"],
        dice: List<Dice>.from(json["dice"].map((x) => Dice.fromJson(x))),
        classKeys:
            List<EntityReference>.from(json["classKeys"].map((x) => EntityReference.fromJson(x))),
        tags: List<Tag>.from(json["tags"].map((x) => Tag.fromJson(x))),
        category: MoveCategory.values.firstWhere((element) => element.name == json["category"]),
      );

  Map<String, dynamic> toJson() => {
        "_meta": meta,
        "key": key,
        "name": name,
        "description": description,
        "explanation": explanation,
        "dice": List<String>.from(dice.map((x) => x.toJson())),
        "classKeys": List<dynamic>.from(classKeys.map((x) => x.toJson())),
        "tags": List<dynamic>.from(tags.map((x) => x.toJson())),
        "category": category.name,
      };

  @override
  String get displayName => name;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Move &&
          runtimeType == other.runtimeType &&
          meta == other.meta &&
          key == other.key &&
          name == other.name &&
          description == other.description &&
          explanation == other.explanation &&
          dice == other.dice &&
          classKeys == other.classKeys &&
          tags == other.tags &&
          category == other.category;

  @override
  int get hashCode =>
      Object.hashAll([meta, key, name, description, explanation, dice, classKeys, tags, category]);

  String get debugProperties =>
      'name: $name, description: $description, explanation: $explanation, dice: $dice, classKeys: $classKeys, tags: $tags, category: $category';

  @override
  String toString() => 'Move($debugProperties)';
}
