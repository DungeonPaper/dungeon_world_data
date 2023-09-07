import 'dart:convert';

import 'base.dart';
import 'gear_selection.dart';

/// Represents a choice of starting gear for a class.
///
/// This is the top level choice - provides one or more options to choose from,
/// where each option is a [GearSelection], which is a list of [GearOption]s.
///
/// For example, "choose a gift from your parents" which gives either "your father's sword" or
/// "your mother's mace"
class GearChoice with KeyMixin {
  GearChoice({
    required this.key,
    required this.description,
    required this.selections,
    this.preselect = const [],
    this.maxSelections,
  });

  @override
  final String key;

  /// The description of the gear choice. For example, "Choose a gift from your parents".
  final String description;

  /// The list of selections available for this gear choice.
  final List<GearSelection> selections;

  /// The list of selections to preselect (if any).
  final List<int> preselect;

  /// The maximum number of selections that can be made, if any.
  final int? maxSelections;

  GearChoice copyWith({
    String? key,
    String? description,
    List<GearSelection>? selections,
    List<int>? preselect,
    int? maxSelections,
  }) =>
      GearChoice(
        key: key ?? this.key,
        description: description ?? this.description,
        selections: selections ?? this.selections,
        preselect: preselect ?? this.preselect,
        maxSelections: maxSelections ?? this.maxSelections,
      );

  factory GearChoice.fromRawJson(String str) => GearChoice.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory GearChoice.fromJson(Map<String, dynamic> json) => GearChoice(
        key: json["key"],
        description: json["description"],
        selections:
            List<GearSelection>.from(json["selections"].map((x) => GearSelection.fromJson(x))),
        preselect: List<int>.from(json['preselect']),
        maxSelections: json['maxSelections'],
      );

  Map<String, dynamic> toJson() => {
        "key": key,
        "description": description,
        "selections": List<dynamic>.from(selections.map((x) => x.toJson())),
        "preselect": preselect,
        "maxSelections": maxSelections,
      };

  /// The preselected gear selections, if any.
  List<GearSelection> get preselectedGearSelections => preselect.isEmpty
      ? []
      : preselect.first == -1
          ? selections
          : selections.sublist(preselect.first, preselect.last);

  @override
  String get displayName => description;

  @override
  bool operator ==(Object? other) =>
      identical(this, other) ||
      other is GearChoice &&
          runtimeType == other.runtimeType &&
          key == other.key &&
          description == other.description &&
          selections == other.selections &&
          preselect == other.preselect &&
          maxSelections == other.maxSelections;

  @override
  int get hashCode => Object.hashAll([
        key,
        description,
        selections,
        preselect,
        maxSelections,
      ]);

  String get debugProperties =>
      'key: $key, description: $description, selections: $selections, preselect: $preselect, maxSelections: $maxSelections';

  @override
  String toString() => 'GearChoice($debugProperties)';
}
