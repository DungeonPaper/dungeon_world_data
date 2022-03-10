import 'dart:convert';

import 'alignment.dart';
import 'dice.dart';
import 'gear_choice.dart';

class CharacterClass {
  CharacterClass({
    required this.meta,
    required this.name,
    required this.key,
    required this.description,
    required this.damageDice,
    required this.load,
    required this.hp,
    required this.alignments,
    required this.bonds,
    required this.gearChoices,
  });

  final dynamic meta;
  final String name;
  final String key;
  final String description;
  final Dice damageDice;
  final int load;
  final int hp;
  final AlignmentValues alignments;
  final List<String> bonds;
  final List<GearChoice> gearChoices;

  CharacterClass copyWith({
    dynamic meta,
    String? name,
    String? key,
    String? description,
    Dice? damageDice,
    int? load,
    int? hp,
    AlignmentValues? alignments,
    List<String>? bonds,
    List<GearChoice>? gearChoices,
  }) =>
      CharacterClass(
        meta: meta ?? this.meta,
        name: name ?? this.name,
        key: key ?? this.key,
        description: description ?? this.description,
        damageDice: damageDice ?? this.damageDice,
        load: load ?? this.load,
        hp: hp ?? this.hp,
        alignments: alignments ?? this.alignments,
        bonds: bonds ?? this.bonds,
        gearChoices: gearChoices ?? this.gearChoices,
      );

  factory CharacterClass.fromRawJson(String str) =>
      CharacterClass.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory CharacterClass.fromJson(Map<String, dynamic> json) => CharacterClass(
        meta: json['_meta'],
        name: json["name"],
        key: json["key"],
        description: json["description"],
        damageDice: Dice.fromJson(json["damageDice"]),
        load: json["load"],
        hp: json["hp"],
        alignments: AlignmentValues.fromJson(json["alignments"]),
        bonds: List<String>.from(json["bonds"].map((x) => x)),
        gearChoices: List<GearChoice>.from(
          json["gearChoices"].map((x) => GearChoice.fromJson(x)),
        ),
      );

  Map<String, dynamic> toJson() => {
        "_meta": meta,
        "name": name,
        "key": key,
        "description": description,
        "damageDice": damageDice.toJson(),
        "load": load,
        "hp": hp,
        "alignments": alignments.toJson(),
        "bonds": List<dynamic>.from(bonds.map((x) => x)),
        "gearChoices": List<dynamic>.from(gearChoices.map((x) => x.toJson())),
      };
}