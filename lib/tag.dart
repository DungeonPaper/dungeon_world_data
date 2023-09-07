import 'dart:convert';

import 'base.dart';

/// Represents a tag.
/// Contains a name, value, and description.
/// Examples are weight: 1, damage: 1d6, etc.
class Tag with KeyMixin {
  Tag({
    required this.name,
    required this.value,
    this.description = "",
  });

  /// The name of the tag.
  final String name;

  /// The value of the tag.
  final dynamic value;

  /// The description of the tag.
  final String description;

  @override
  String get key => name;

  Tag copyWith({
    String? name,
    dynamic value,
    String? description,
  }) =>
      Tag(
        name: name ?? this.name,
        value: value ?? this.value,
        description: description ?? this.description,
      );

  factory Tag.fromRawJson(String str) => Tag.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Tag.fromJson(Map<String, dynamic> json) => Tag(
        name: json["name"],
        value: json["value"],
        description: json["description"] ?? "",
      );

  Map<String, dynamic> toJson() => {
        "name": name,
        "value": value,
        "description": description,
      };

  @override
  String get displayName => name;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Tag &&
          runtimeType == other.runtimeType &&
          name == other.name &&
          value == other.value &&
          description == other.description;

  @override
  int get hashCode => Object.hashAll([name, value, description]);

  String get debugProperties => 'name: $name, value: $value, description: $description';

  @override
  String toString() => 'Tag($debugProperties)';
}
