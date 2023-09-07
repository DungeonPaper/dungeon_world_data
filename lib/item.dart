import 'dart:convert';

import 'base.dart';
import 'tag.dart';

class Item with KeyMixin {
  Item({
    required this.meta,
    required this.key,
    required this.description,
    required this.name,
    required this.tags,
  });

  final dynamic meta;

  @override
  final String key;
  final String name;
  final String description;
  final List<Tag> tags;

  Item copyWith({
    dynamic meta,
    String? key,
    String? name,
    String? description,
    List<Tag>? tags,
  }) =>
      Item(
        meta: meta ?? this.meta,
        key: key ?? this.key,
        name: name ?? this.name,
        description: description ?? this.description,
        tags: tags ?? this.tags,
      );

  factory Item.fromRawJson(String str) => Item.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Item.fromJson(Map<String, dynamic> json) => Item(
        meta: json["_meta"],
        key: json["key"],
        name: json["name"],
        description: json["description"],
        tags: List<Tag>.from(json["tags"].map((x) => Tag.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "_meta": meta,
        "key": key,
        "name": name,
        "description": description,
        "tags": List<dynamic>.from(tags.map((x) => x.toJson())),
      };

  @override
  String get displayName => name;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Item &&
          runtimeType == other.runtimeType &&
          key == other.key &&
          name == other.name &&
          description == other.description &&
          tags == other.tags;

  @override
  int get hashCode => Object.hashAll([key, name, description, tags]);

  String get debugProperties =>
      'meta: $meta, key: $key, name: $name, description: $description, tags: $tags';

  @override
  String toString() => 'Item($debugProperties)';
}
