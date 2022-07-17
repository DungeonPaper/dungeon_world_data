import 'dart:convert';

import 'base.dart';

class Tag with KeyMixin {
  Tag({
    required this.name,
    required this.value,
    this.description = "",
  });

  final String name;
  final dynamic value;
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
}
