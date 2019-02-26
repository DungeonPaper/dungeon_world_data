import 'dart:convert';
import 'dart:io';
import 'package:dungeon_world_data/equipment.dart';
import 'package:dungeon_world_data/mappers.dart';
import 'package:dungeon_world_data/monster.dart';
import 'package:dungeon_world_data/move.dart';
import 'package:dungeon_world_data/player_class.dart';
import 'package:dungeon_world_data/spell.dart';
import 'package:dungeon_world_data/tag.dart';
import 'package:path/path.dart';

const String VERSION = '1.0.2';

class DungeonWorldData {
  /** Raw data */
  Map<String, dynamic> raw;
  /** Map of `Move.key` => `Move` */
  Map<String, Move> moves;
  /** Basic moves */
  List<Move> basicMoves;
  /** Special moves */
  List<Move> specialMoves;
  /** Starting moves (per class) */
  Map<String, List<Move>> startingMoves;
  /** Advanced moves  (per class) */
  Map<String, List<Move>> advancedMoves;
  /** Map of `PlayerClass.key` => `PlayerClass` */
  Map<String, PlayerClass> classes;
  /** Map of `Equipment.key` => `Equipment` */
  Map<String, Equipment> equipment;
  /** Map of `Spell.key` => `Spell` */
  Map<String, Spell> spells;
  /** Map of `Monster.key` => `Monster` */
  Map<String, Monster> monsters;
  /** Map of `Tag.name` => `Tag` */
  Map<String, Tag> tags;
  /** Current version of data, corresponds to same version of https://www.npmjs.com/package/dungeonworld-data */
  String version;

  DungeonWorldData() {
    var _raw = new File(dirname(Platform.script.path) + '/basic.json');
    raw = jsonDecode(_raw.readAsStringSync());
    _initFromData();
  }

  void _initFromData() {
    moves = moveMapMapper(raw['moves']);
    basicMoves = moveListMapper(raw['basic_moves']);
    specialMoves = moveListMapper(raw['special_moves']);
    classes = classMapper(raw['classes']);
    equipment = equipmentMapper(raw['equipment']);
    spells = spellsMapper(raw['spells']);
    monsters = monsterMapper(raw['monsters']);
    tags = tagMapper(raw['tags']);
    version = raw['version'];

    startingMoves = gatherStartingMoves();
    advancedMoves = gatherRaceMoves();
  }

  Map<String, List<Move>> gatherStartingMoves() {
    return classes.map((k, v) => MapEntry(k, v.startingMoves));
  }

  Map<String, List<Move>> gatherRaceMoves() {
    return classes.map((k, v) => MapEntry(k, v.raceMoves));
  }
}


DungeonWorldData dungeonWorld = DungeonWorldData();

main() {
  print('Library version: ${VERSION}');
  print('Data version: ${dungeonWorld.version}');
  print('Please import this library and access `dungeonWorld`.');
}
