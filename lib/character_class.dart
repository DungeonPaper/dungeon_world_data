import 'dart:convert';

import 'alignment.dart';
import 'base.dart';
import 'dice.dart';
import 'gear_choice.dart';

/// Describes a Dungeon World character class
class CharacterClass with KeyMixin {
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
    required this.flags,
    required this.gearChoices,
    required this.isSpellcaster,
  });

  /// Dynamic metadata
  final dynamic meta;

  /// Class name, such as 'Wizard', 'Paladin'
  final String name;

  @override
  final String key;

  /// Class description
  final String description;

  /// Dice used for damage calculation
  final Dice damageDice;

  /// CLass's base load, which is added to the character's STR modifier to calculate Max Load
  final int load;

  /// CLass's base HP, which is added to the character's CON modifier to calculate Max HP
  final int hp;

  /// This class's set of alignments along with their descriptions
  final AlignmentValues alignments;

  /// This class's default bonds
  final List<String> bonds;

  /// This class's default flags
  final List<String> flags;

  /// This class's starting gear options
  final List<GearChoice> gearChoices;

  /// Whether this class is a Magic User
  final bool isSpellcaster;

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
    List<String>? flags,
    List<GearChoice>? gearChoices,
    bool? isSpellcaster,
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
        flags: flags ?? this.flags,
        gearChoices: gearChoices ?? this.gearChoices,
        isSpellcaster: isSpellcaster ?? this.isSpellcaster,
      );

  factory CharacterClass.fromRawJson(String str) => CharacterClass.fromJson(json.decode(str));

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
        bonds: List<String>.from(json["bonds"]),
        flags: List<String>.from(json["flags"]),
        gearChoices: List<GearChoice>.from(
          json["gearChoices"].map((x) => GearChoice.fromJson(x)),
        ),
        isSpellcaster: json["isSpellcaster"] ?? false,
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
        "bonds": List<dynamic>.from(bonds),
        "flags": List<dynamic>.from(flags),
        "gearChoices": List<dynamic>.from(gearChoices.map((x) => x.toJson())),
        "isSpellcaster": isSpellcaster,
      };

  @override
  String get displayName => name;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is CharacterClass &&
          runtimeType == other.runtimeType &&
          meta == other.meta &&
          name == other.name &&
          key == other.key &&
          description == other.description &&
          damageDice == other.damageDice &&
          load == other.load &&
          hp == other.hp &&
          alignments == other.alignments &&
          bonds == other.bonds &&
          flags == other.flags &&
          gearChoices == other.gearChoices &&
          isSpellcaster == other.isSpellcaster;

  @override
  int get hashCode => Object.hashAll([
        meta,
        name,
        key,
        description,
        damageDice,
        load,
        hp,
        alignments,
        bonds,
        flags,
        gearChoices,
        isSpellcaster
      ]);

  String get debugProperties =>
      'meta: $meta, name: $name, key: $key, description: $description, damageDice: $damageDice, load: $load, hp: $hp, alignments: $alignments, bonds: $bonds, flags: $flags, gearChoices: $gearChoices, isSpellcaster: $isSpellcaster';

  @override
  String toString() => 'CharacterClass($debugProperties)';
}
