import 'dart:convert';

import 'base.dart';
import 'gear_option.dart';

/// One possible selection of many, which is a "bundle" of items and coins. Contains multiple
/// options, each of which is an item and amount, and total coins.
///
/// All of these should be added at once when making a selection. This is the final level of
/// selection, the inner options are all given to the player.
class GearSelection with KeyMixin {
  GearSelection({
    required this.key,
    required this.description,
    required this.options,
    required this.coins,
  });

  @override
  final String key;
  final String description;
  final List<GearOption> options;
  final double coins;

  GearSelection copyWith({
    String? key,
    String? description,
    List<GearOption>? options,
    double? coins,
  }) =>
      GearSelection(
        key: key ?? this.key,
        description: description ?? this.description,
        options: options ?? this.options,
        coins: coins ?? this.coins,
      );

  factory GearSelection.fromRawJson(String str) => GearSelection.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory GearSelection.fromJson(Map<String, dynamic> json) => GearSelection(
        key: json["key"],
        description: json["description"],
        options: List<GearOption>.from(json["options"].map((x) => GearOption.fromJson(x))),
        coins: json["coins"]?.toDouble(),
      );

  Map<String, dynamic> toJson() => {
        "key": key,
        "description": description,
        "options": List<dynamic>.from(options.map((x) => x.toJson())),
        "coins": coins,
      };
}
