import 'dart:convert';

import 'move.dart';
import 'tag.dart';

class Monster {
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
  final String key;
  final String name;
  final String description;
  final String instinct;
  final List<Tag> tags;
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
}
