import 'package:dungeon_world_data/_data.dart';
import 'package:dungeon_world_data/equipment.dart';
import 'package:dungeon_world_data/mappers.dart';
import 'package:dungeon_world_data/monster.dart';
import 'package:dungeon_world_data/move.dart';
import 'package:dungeon_world_data/player_class.dart';
import 'package:dungeon_world_data/spell.dart';
import 'package:dungeon_world_data/tag.dart';

const String VERSION = '1.0.3';

class DungeonWorldData {
  /// Raw data
  Map<String, dynamic> raw;

  /// Basic moves
  List<Move> basicMoves;

  /// Special moves
  List<Move> specialMoves;

  /// Map of `PlayerClass.key` => `Move`
  Map<String, List<Move>> startingMoves;

  /// Map of `PlayerClass.key` => `Move`
  Map<String, List<Move>> advancedMoves;

  /// Map of `PlayerClass.key` => `PlayerClass`
  Map<String, PlayerClass> classes;

  /// Map of `Equipment.key` => `Equipment`
  Map<String, Equipment> equipment;

  /// Map of `Spell.key` => `Spell`
  Map<String, Spell> spells;

  /// Map of `Monster.key` => `Monster`
  Map<String, Monster> monsters;

  /// Map of `Tag.name` => `Tag`
  Map<String, Tag> tags;

  /// Current version of data, corresponds to same version of https://www.npmjs.com/package/dungeonworld-data
  final String version = VERSION;

  DungeonWorldData() {
    raw = DW_DATA;
    _initFromData();
  }

  void _initFromData() {
    basicMoves = moveListMapper(raw['basic_moves']);
    specialMoves = moveListMapper(raw['special_moves']);
    classes = classMapper(raw['classes']);
    equipment = equipmentMapper(raw['equipment']);
    monsters = monsterMapper(raw['monsters']);
    tags = tagMapper(raw['tags']);
    spells = {};
    classes.values.forEach((cls) {
      spells.addAll(cls.spells);
    });

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
