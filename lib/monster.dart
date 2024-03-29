import 'dart:convert';

import 'base.dart';
import 'tag.dart';

/// Represents a monster.
class Monster with KeyMixin {
  Monster({
    required this.meta,
    required this.key,
    required this.name,
    required this.description,
    required this.instinct,
    required this.tags,
    required this.moves,
  });

  final dynamic meta;

  @override
  final String key;

  /// The name of the monster.
  final String name;

  /// The description of the monster.
  final String description;

  /// The instinct of the monster.
  final String instinct;

  /// The tags of the monster.
  final List<Tag> tags;

  /// The moves of the monster.
  final List<String> moves;

  Monster copyWith({
    dynamic meta,
    String? key,
    String? name,
    String? description,
    String? instinct,
    List<Tag>? tags,
    List<String>? moves,
  }) =>
      Monster(
        meta: meta ?? this.meta,
        key: key ?? this.key,
        name: name ?? this.name,
        description: description ?? this.description,
        instinct: instinct ?? this.instinct,
        tags: tags ?? this.tags,
        moves: moves ?? this.moves,
      );

  factory Monster.fromRawJson(String str) => Monster.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Monster.fromJson(Map<String, dynamic> json) => Monster(
        meta: json["_meta"],
        key: json["key"],
        name: json["name"],
        description: json["description"],
        instinct: json["instinct"],
        tags: List<Tag>.from(json["tags"].map((x) => Tag.fromJson(x))).toList(),
        moves: json["moves"] ?? [],
      );

  Map<String, dynamic> toJson() => {
        "_meta": meta,
        "key": key,
        "name": name,
        "description": description,
        "instinct": instinct,
        "tags": List<dynamic>.from(tags.map((x) => x.toJson())),
        "moves": moves,
      };

  @override
  String get displayName => name;

  @override
  bool operator ==(Object? other) =>
      identical(this, other) ||
      other is Monster &&
          runtimeType == other.runtimeType &&
          meta == other.meta &&
          key == other.key &&
          name == other.name &&
          description == other.description &&
          instinct == other.instinct &&
          tags == other.tags &&
          moves == other.moves;

  @override
  int get hashCode => Object.hashAll([meta, key, name, description, instinct, tags, moves]);

  String get debugProperties =>
      'meta: $meta, key: $key, name: $name, description: $description, instinct: $instinct, tags: $tags, moves: $moves';

  @override
  String toString() => 'Monster($debugProperties)';
}
