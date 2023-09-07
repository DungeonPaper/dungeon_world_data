import 'dart:convert';

import 'base.dart';

/// The type of session mark
enum SessionMarkType {
  /// A bond
  bond,

  /// A flag
  flag,

  /// An end of session mark
  endOfSession,

  /// A custom mark
  other
}

class SessionMark with KeyMixin {
  SessionMark({
    required this.key,
    required this.description,
    required this.completed,
    required this.type,
  });

  @override
  final String key;

  /// The description of the session mark. When to mark it, what it means, etc.
  final String description;

  /// Whether or not the session mark has been completed, or checked.
  final bool completed;

  /// The type of session mark.
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

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is SessionMark &&
          runtimeType == other.runtimeType &&
          key == other.key &&
          description == other.description &&
          completed == other.completed &&
          type == other.type;

  @override
  int get hashCode => Object.hashAll([key, description, completed, type]);

  String get debugProperties =>
      'key: $key, description: $description, completed: $completed, type: $type';

  @override
  String toString() => 'SessionMark($debugProperties)';
}
