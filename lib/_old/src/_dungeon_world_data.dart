import 'package:collection/collection.dart' show IterableExtension;
import 'package:quiver/core.dart';
import 'package:uuid/uuid.dart';
import '../tag.dart';
import '../alignment.dart';
import '../equipment.dart';
import '../mappers.dart';
import '../monster.dart';
import '../move.dart';
import '../player_class.dart';
import '../spell.dart';
import '../gear_choice.dart';
import '../dice.dart';

part '_data.dart';
part '_cache.dart';
part '_base.dart';

part '_homebrew.dart';

// ignore: constant_identifier_names
const String VERSION = '2.0.0';

class DungeonWorldData {
  late Map<String, dynamic> _raw;

  /// Raw data
  Map<String, dynamic> get raw => _raw;

  /// Basic moves
  late List<Move> basicMoves;

  /// Special moves
  late List<Move> specialMoves;

  /// Classes
  late List<PlayerClass> classes;

  /// Equipment
  late List<Equipment> equipment;

  /// Spells
  late List<Spell> spells;

  /// Monsters
  late List<Monster> monsters;

  /// Tags
  late List<Tag> tags;

  /// Current version of data, corresponds to same version of https://www.npmjs.com/package/dungeonworld-data
  final String version = VERSION;

  DungeonWorldData() {
    _initFromData();
    _raw = toJSON();
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

  Map<String, dynamic> toJSON() => {
        'tags': listMapper<Tag, dynamic, Tag>(tags, (t) => t.toJSON()),
        'basic_moves': listMapper<Move, dynamic, Move>(basicMoves, (t) => t.toJSON()),
        'special_moves': listMapper<Move, dynamic, Move>(specialMoves, (t) => t.toJSON()),
        'classes': listMapper<PlayerClass, dynamic, PlayerClass>(classes, (t) => t.toJSON()),
        'equipment': listMapper<Equipment, dynamic, Equipment>(equipment, (t) => t.toJSON()),
        'monsters': listMapper<Monster, dynamic, Monster>(monsters, (t) => t.toJSON()),
        'spells': listMapper<Spell, dynamic, Spell>(spells, (t) => t.toJSON()),
      };

  static Map<String, T> listToMap<T extends DWEntity>(
    Iterable<T> list, {
    String Function(T) key = entryKey,
  }) =>
      Map<String, T>.fromEntries(
        list.map((v) => MapEntry<String, T>(key(v), v)),
      );

  static String entryKey(DWEntity item) => item.key!;
}
