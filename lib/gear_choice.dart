import 'dart:convert';

import 'gear_selection.dart';

/// This is the top level choice - provides one or more options to choose from.
///
/// For example, "choose a gift from your parents" which gives either "your father's sword" or
/// "your mother's mace"
class GearChoice {
  GearChoice({
    required this.key,
    required this.description,
    required this.selections,
    this.preselect = const [],
    this.maxSelections,
  });

  final String key;
  final String description;
  final List<GearSelection> selections;
  final List<int> preselect;
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

  List<GearSelection> get preselectedGearSelections => preselect.isEmpty
      ? []
      : preselect.first == -1
          ? selections
          : selections.sublist(preselect.first, preselect.last);
}
