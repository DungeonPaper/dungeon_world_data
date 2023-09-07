import 'dart:convert';

import 'base.dart';
import 'dice.dart';
import 'entity_reference.dart';
import 'tag.dart';

/// Represents a playable race such as a human, elf, or dwarf.
class Race with KeyMixin {
  Race({
    required this.meta,
    required this.key,
    required this.name,
    required this.description,
    required this.explanation,
    required this.dice,
    required this.classKeys,
    required this.tags,
  });

  final dynamic meta;

  @override
  final String key;

  /// The name of the race
  final String name;

  /// The description of the race's unique move.
  /// Contains what it does, and how it works mechanically.
  final String description;

  /// The explanation of the race's unique move - how it works in the fiction, examples or other details.
  final String explanation;

  /// Classes that can be assigned to this race
  final List<EntityReference> classKeys;

  /// The tags of this race
  final List<Tag> tags;

  /// The dice list rolled when using this race's unique move.
  final List<Dice> dice;

  Race copyWith({
    dynamic meta,
    String? key,
    String? name,
    String? description,
    String? explanation,
    List<EntityReference>? classKeys,
    List<Tag>? tags,
    List<Dice>? dice,
  }) =>
      Race(
        meta: meta ?? this.meta,
        key: key ?? this.key,
        name: name ?? this.name,
        description: description ?? this.description,
        explanation: explanation ?? this.explanation,
        classKeys: classKeys ?? this.classKeys,
        tags: tags ?? this.tags,
        dice: dice ?? this.dice,
      );

  factory Race.fromRawJson(String str) => Race.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Race.fromJson(Map<String, dynamic> json) => Race(
        meta: json["_meta"],
        key: json["key"],
        name: json["name"],
        description: json["description"],
        explanation: json["explanation"],
        classKeys:
            List<EntityReference>.from(json["classKeys"].map((x) => EntityReference.fromJson(x))),
        tags: List<Tag>.from(json["tags"].map((x) => Tag.fromJson(x))),
        dice: List<Dice>.from(json["dice"].map((x) => Dice.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "_meta": meta,
        "key": key,
        "name": name,
        "description": description,
        "explanation": explanation,
        "classKeys": List<dynamic>.from(classKeys.map((x) => x.toJson())),
        "tags": List<dynamic>.from(tags.map((x) => x.toJson())),
        "dice": List<dynamic>.from(dice.map((x) => x.toJson()))
      };

  @override
  String get displayName => name;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Race &&
          runtimeType == other.runtimeType &&
          meta == other.meta &&
          key == other.key &&
          name == other.name &&
          description == other.description &&
          explanation == other.explanation &&
          classKeys == other.classKeys &&
          tags == other.tags &&
          dice == other.dice;

  @override
  int get hashCode =>
      Object.hashAll([meta, key, name, description, explanation, classKeys, tags, dice]);

  String get debugProperties =>
      'meta: $meta, key: $key, name: $name, description: $description, explanation: $explanation, classKeys: $classKeys, tags: $tags, dice: $dice';

  @override
  String toString() => 'Race($debugProperties)';
}
