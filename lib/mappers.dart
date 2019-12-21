import 'package:dungeon_world_data/alignment.dart';
import 'package:dungeon_world_data/equipment.dart';
import 'package:dungeon_world_data/gear_choice.dart';
import 'package:dungeon_world_data/monster.dart';
import 'package:dungeon_world_data/move.dart';
import 'package:dungeon_world_data/player_class.dart';
import 'package:dungeon_world_data/spell.dart';
import 'package:dungeon_world_data/tag.dart';

List<R> listMapper<T, R>(List<T> lst, R Function(dynamic obj) mapper) =>
    lst != null && lst.isNotEmpty
        ? List.from(lst).map<R>(mapper).toList()
        : <R>[];

Map<String, R> mapMapper<R>(Map map,
        MapEntry<String, R> Function(dynamic key, dynamic obj) mapper) =>
    map != null ? Map.from(map).map<String, R>(mapper) : {};

List<Move> moveListMapper(List lst) => lst == null || lst.isEmpty
    ? <Move>[]
    : listMapper<Map, Move>(List<Map>.from(lst), (v) => Move.fromJSON(v));

Map<String, Move> moveMapMapper(Map map) => mapMapper<Move>(
    map, (k, v) => MapEntry<String, Move>(k.toString(), Move.fromJSON(v)));

Map<String, PlayerClass> classMapper(Map map) => mapMapper(
    map,
    (k, v) =>
        MapEntry<String, PlayerClass>(k.toString(), PlayerClass.fromJSON(v)));

Map<String, List<String>> nameMapper(Map map) => mapMapper<List<String>>(
    map,
    (k, v) => MapEntry<String, List<String>>(
        k.toString(), listMapper<dynamic, String>(v, (j) => j.toString())));

List<List<String>> looksMapper(List lst) =>
    listMapper(lst, (i) => listMapper(i, (j) => j.toString()));

Map<String, Alignment> alignmentsMapper(Map map) => mapMapper(map,
    (k, v) => MapEntry<String, Alignment>(k.toString(), Alignment.fromJSON(v)));

List<GearChoice> gearChoiceMapper(List lst) =>
    listMapper(lst, (v) => GearChoice.fromJSON(v));

List<GearOption> gearOptionMapper(List lst) =>
    listMapper(lst, (v) => GearOption.parse(v));

Map<String, Equipment> equipmentMapper(Map map) => mapMapper(map,
    (k, v) => MapEntry<String, Equipment>(k.toString(), Equipment.fromJSON(v)));

List<Spell> spellsMapper(List lst) {
  if (lst == null) {
    return [];
  }

  return listMapper(lst, (v) => Spell.fromJSON(v));
}

Map<String, Monster> monsterMapper(Map map) => mapMapper(map,
    (k, v) => MapEntry<String, Monster>(k.toString(), Monster.fromJSON(v)));

Map<String, Tag> tagMapper(Map map) => mapMapper(
    map, (k, v) => MapEntry<String, Tag>(k.toString(), Tag.fromJSON(v)));

Map<String, Tag> tagInfoMapper(Map map) => mapMapper(map, (k, v) {
      String cleanName = v['name']
          .toString()
          .replaceAll(RegExp(r'[^a-z]', caseSensitive: false), ' ')
          .trim()
          .replaceFirst(RegExp(r'^n\s'), '')
          .trim();
      return MapEntry<String, Tag>(
          k.toString(), Tag(cleanName, null, v['description']));
    });
