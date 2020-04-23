import 'package:dungeon_world_data/_base.dart';
import 'package:dungeon_world_data/alignment.dart';
import 'package:dungeon_world_data/dice.dart';
import 'package:dungeon_world_data/gear_choice.dart';
import 'package:dungeon_world_data/move.dart';
import 'package:dungeon_world_data/mappers.dart';
import 'package:dungeon_world_data/spell.dart';
import 'package:meta/meta.dart';

class PlayerClass extends DWEntity {
  /// Class name
  String name;

  /// Class description
  String description;

  /// Base max. weight load, without the +STR.
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
  List<Spell> spells;

  /// Gear choices
  List<GearChoice> gearChoices;

  PlayerClass({
    String key,
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
  }) : super(key: key ?? DWEntity.generateKey(name));

  /// Combined list of `advancedMoves1` and `advancedMoves2`
  List<Move> get advancedMoves => advancedMoves1 + advancedMoves2;

  @override
  String toString() {
    return 'Class: $name, baseHP: $baseHP';
  }

  factory PlayerClass.fromJSON(Map map) => PlayerClass(
        key: map['key'] ??
            map['name']
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
  Map toJSON() => {
        'key': key,
        'name': name,
        'description': description,
        'load': load,
        'base_hp': baseHP,
        'damage': damage.toString(),
        'names': names,
        'bonds': bonds,
        'looks': looks,
        'alignments':
            mapMapper<Map>(alignments, (k, v) => MapEntry(k, v.toJSON())),
        'race_moves':
            listMapper<Move, Map, Move>(raceMoves, (move) => move.toJSON()),
        'starting_moves':
            listMapper<Move, Map, Move>(startingMoves, (move) => move.toJSON()),
        'spells': listMapper(spells, (v) => v.toJSON()),
        'gear_choices': listMapper<GearChoice, Map, GearChoice>(
            gearChoices, (choice) => choice.toJSON()),
      };

  @override
  PlayerClass copy() => PlayerClass.fromJSON(toJSON());
}
