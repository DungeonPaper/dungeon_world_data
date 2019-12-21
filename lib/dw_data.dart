import 'package:dungeon_world_data/_data.dart';
import 'package:dungeon_world_data/equipment.dart';
import 'package:dungeon_world_data/monster.dart';
import 'package:dungeon_world_data/move.dart';
import 'package:dungeon_world_data/player_class.dart';
import 'package:dungeon_world_data/spell.dart';
import 'package:dungeon_world_data/tag.dart';
import '_cache.dart';
import '_base.dart';
import '_homebrew.dart';

const String VERSION = '2.0.0';

class DungeonWorldData {
  /// Raw data
  Map<String, dynamic> get raw => {};

  /// Basic moves
  List<Move> basicMoves;

  /// Special moves
  List<Move> specialMoves;

  /// Classes
  List<PlayerClass> classes;

  /// Equipment
  List<Equipment> equipment;

  /// Spells
  List<Spell> spells;

  /// Monsters
  List<Monster> monsters;

  /// Tags
  List<Tag> tags;

  /// Current version of data, corresponds to same version of https://www.npmjs.com/package/dungeonworld-data
  final String version = VERSION;

  DungeonWorldData() {
    _initFromData();
  }

  void _initFromData() {
    initData();
    initHomebrew();

    tags = tagList;
    basicMoves = basicMovesList;
    specialMoves = specialMovesList;
    classes = playerClassList;
    equipment = equipmentList;
    monsters = monsterList;
    spells = spellList;
  }

  static Map<String, T> listToMap<T extends DWEntity>(
    Iterable<T> list, {
    String Function(T) key = entryKey,
  }) {
    return Map<String, T>.fromEntries(
        list.map((v) => MapEntry<String, T>(key(v), v)));
  }

  static String entryKey(DWEntity item) => item.key;
}

DungeonWorldData dungeonWorld = DungeonWorldData();
