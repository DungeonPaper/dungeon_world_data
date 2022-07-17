import 'dart:convert';

import 'base.dart';

enum AlignmentType {
  good,
  lawful,
  neutral,
  chaotic,
  evil,
}

/// Describes a character's alignment.
class Alignment with KeyMixin {
  Alignment({
    required this.type,
    required this.description,
  });

  /// The alignment being described
  ///
  /// See [AlignmentType]
  final AlignmentType type;

  @override
  String get key => type.name;

  /// The alignment's description
  final String description;

  Alignment copyWith({
    AlignmentType? type,
    String? description,
  }) =>
      Alignment(
        type: type ?? this.type,
        description: description ?? this.description,
      );

  factory Alignment.fromRawJson(String str) => Alignment.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Alignment.fromJson(Map<String, dynamic> json) => Alignment(
        type: AlignmentType.values.firstWhere((e) => e == json["key"]),
        description: json["description"],
      );

  Map<String, dynamic> toJson() => {
        "key": key,
        "description": description,
      };

  @override
  String get displayName => description;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Alignment &&
          runtimeType == other.runtimeType &&
          type == other.type &&
          description == other.description;

  @override
  int get hashCode => Object.hashAll([type, description]);

  String get debugProperties => 'type: $type, description: $description';

  @override
  String toString() => 'Alignment($debugProperties)';
}

class AlignmentValues {
  AlignmentValues({
    required this.good,
    required this.evil,
    required this.lawful,
    required this.neutral,
    required this.chaotic,
  });

  final String good;
  final String evil;
  final String lawful;
  final String neutral;
  final String chaotic;

  AlignmentValues copyWith({
    String? good,
    String? evil,
    String? lawful,
    String? neutral,
    String? chaotic,
  }) =>
      AlignmentValues(
        good: good ?? this.good,
        evil: evil ?? this.evil,
        lawful: lawful ?? this.lawful,
        neutral: neutral ?? this.neutral,
        chaotic: chaotic ?? this.chaotic,
      );

  factory AlignmentValues.fromRawJson(String str) => AlignmentValues.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory AlignmentValues.fromJson(Map<String, dynamic> json) => AlignmentValues(
        good: json["good"],
        evil: json["evil"],
        lawful: json["lawful"],
        neutral: json["neutral"],
        chaotic: json["chaotic"],
      );

  Map<String, dynamic> toJson() => {
        "good": good,
        "evil": evil,
        "lawful": lawful,
        "neutral": neutral,
        "chaotic": chaotic,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is AlignmentValues &&
          runtimeType == other.runtimeType &&
          good == other.good &&
          evil == other.evil &&
          lawful == other.lawful &&
          neutral == other.neutral &&
          chaotic == other.chaotic;

  @override
  int get hashCode => Object.hashAll([good, evil, lawful, neutral, chaotic]);

  String get debugProperties =>
      'good: $good, evil: $evil, lawful: $lawful, neutral: $neutral, chaotic: $chaotic';

  @override
  String toString() => 'AlignmentValues($debugProperties)';
}
