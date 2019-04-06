import 'package:dungeon_world_data/_base.dart';
import 'package:dungeon_world_data/alignment.dart';
import 'package:dungeon_world_data/dice.dart';
import 'package:dungeon_world_data/gear_choice.dart';
import 'package:dungeon_world_data/move.dart';
import 'package:dungeon_world_data/mappers.dart';
import 'package:dungeon_world_data/spell.dart';
import 'package:meta/meta.dart';

class PlayerClass extends DWEntity {
  /// Class key
  String key;

  /// Class name
  String name;

  /// Class description
  String description;

  /// Max. weight load
  num load;

  /// Base HP
  num baseHP;

  /// Hit die
  Dice damage;

  /// Character name options, mapped by race
  Map<String, List<String>> names;

  /// Class Bonds
  List<String> bonds;

  /// Character look options
  List<List<String>> looks;

  /// Character alignment options. Map of `Alignment.key` => `Alignment`
  Map<String, Alignment> alignments;

  /// Race moves
  List<Move> raceMoves;

  /// Starting moves
  List<Move> startingMoves;

  /// Starting moves
  List<Move> advancedMoves1;

  /// Starting moves
  List<Move> advancedMoves2;

  /// Spells
  Map<String, Spell> spells;

  /// Gear choices
  List<GearChoice> gearChoices;

  PlayerClass({
    @required this.key,
    @required this.name,
    @required this.description,
    @required this.load,
    @required this.baseHP,
    @required this.damage,
    @required this.names,
    @required this.bonds,
    @required this.looks,
    @required this.alignments,
    @required this.raceMoves,
    @required this.startingMoves,
    @required this.advancedMoves1,
    @required this.advancedMoves2,
    @required this.spells,
    @required this.gearChoices,
  });

  @override
  String toString() {
    return 'Class: $name, baseHP: $baseHP';
  }

  static PlayerClass fromJSON(Map map) => PlayerClass(
        key: map['name']
            .toString()
            .toLowerCase()
            .replaceAll(RegExp('[^a-z]'), '_'),
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
        advancedMoves1: moveListMapper(map['advanced_moves_1']),
        advancedMoves2: moveListMapper(map['advanced_moves_2']),
        spells: spellsMapper(map['spells']),
        gearChoices: gearChoiceMapper(map['gear_choices']),
      );

  @override
  Map toJSON() {
    return {
      'name': name,
      'description': description,
      'load': load,
      'baseHP': baseHP,
      'damage': damage.toString(),
      'names': names,
      'bonds': bonds,
      'looks': looks,
      'alignments': alignments,
      'raceMoves': listMapper<Move, Map>(raceMoves, (move) => move.toJSON()),
      'startingMoves':
          listMapper<Move, Map>(startingMoves, (move) => move.toJSON()),
      'spells': mapMapper(spells, (k, v) => MapEntry(k, v.toJSON())),
      'gearChoices':
          listMapper<GearChoice, Map>(gearChoices, (choice) => choice.toJSON()),
    };
  }
}
