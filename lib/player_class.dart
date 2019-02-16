import 'package:dungeon_world_data/alignment.dart';
import 'package:dungeon_world_data/dice.dart';
import 'package:dungeon_world_data/gear_choice.dart';
import 'package:dungeon_world_data/move.dart';
import 'package:dungeon_world_data/mappers.dart';
import 'package:dungeon_world_data/spell.dart';

class PlayerClass {
  /** Class name */
  final String name;
  /** Class description */
  final String description;
  /** Max. weight load */
  final num load;
  /** Base HP */
  final num baseHP;
  /** Hit die */
  final Dice damage;
  /** Character name options, mapped by race */
  final Map<String, List<String>> names;
  /** Class Bonds */
  final List<String> bonds;
  /** Character look options */
  final List<List<String>> looks;
  /** Character alignment options. Map of `Alignment.key` => `Alignment` */
  final Map<String, Alignment> alignments;
  /** Race moves */
  final List<Move> raceMoves;
  /** Starting moves */
  final List<Move> startingMoves;
  /** Spells */
  final Map<String, Spell> spells;
  /** Gear choices */
  final List<GearChoice> gearChoices;

  PlayerClass({
    this.name,
    this.description,
    this.load,
    this.baseHP,
    this.damage,
    this.names,
    this.bonds,
    this.looks,
    this.alignments,
    this.raceMoves,
    this.startingMoves,
    this.spells,
    this.gearChoices,
  });

  @override
  String toString() {
    return 'Class: $name, baseHP: $baseHP';
  }

  static PlayerClass fromJSON(Map map) => PlayerClass(
        name: map['name'],
        description: map['description'],
        load: map['load'],
        baseHP: map['base_hp'],
        damage: Dice.parse(map['damage']),
        names: nameMapper(map['names']),
        bonds: listMapper(map['bonds'], (j) => j.toString()),
        looks: looksMapper(map['looks']),
        alignments: alignmentsMapper(map['alignments']),
        raceMoves: moveListMapper(map['race_moves']),
        startingMoves: moveListMapper(map['starting_moves']),
        spells: spellsMapper(map['spells']),
        gearChoices: gearChoiceMapper(map['gear_choices']),
      );
}
