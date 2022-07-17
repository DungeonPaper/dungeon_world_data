import 'dart:convert';

import 'base.dart';

enum SessionMarkType { bond, flag, endOfSession, other }

class SessionMark with KeyMixin {
  SessionMark({
    required this.key,
    required this.description,
    required this.completed,
    required this.type,
  });

  @override
  final String key;
  final String description;
  final bool completed;
  final SessionMarkType type;

  SessionMark copyWith({
    String? key,
    String? description,
    bool? completed,
    SessionMarkType? type,
  }) =>
      SessionMark(
        key: key ?? this.key,
        description: description ?? this.description,
        completed: completed ?? this.completed,
        type: type ?? this.type,
      );

  factory SessionMark.fromRawJson(String str) => SessionMark.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory SessionMark.fromJson(Map<String, dynamic> json) => SessionMark(
        key: json["key"],
        completed: json["completed"],
        description: json["description"],
        type: SessionMarkType.values.firstWhere((e) => e.name == json['type']),
      );

  Map<String, dynamic> toJson() => {
        "key": key,
        "description": description,
        "completed": completed,
        "type": type.name,
      };

  @override
  String get displayName => description;
}
