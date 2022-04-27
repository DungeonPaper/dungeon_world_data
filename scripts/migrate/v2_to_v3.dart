import 'dart:convert';
import 'dart:io';

import 'package:dungeon_world_data/_old/dw_data.dart' as old;
import 'package:dungeon_world_data/_utils/uuid.dart';
import 'package:dungeon_world_data/dungeon_world_data.dart';
import 'package:dungeon_world_data/gear_option.dart';
import 'package:path/path.dart' as path;

final _jsonOut = path.join(
  path.dirname(Platform.script.path),
  'dumps',
  'all.json',
);

Map<String, String> strFixMap = {
  "—": "-",
  "–": "-",
  "’": "'",
  "“": "\"",
  "”": "\"",
};

final json = <String, dynamic>{
  'moves': <Map<String, dynamic>>[],
  'races': <Map<String, dynamic>>[],
  'classes': <Map<String, dynamic>>[],
  'spells': <Map<String, dynamic>>[],
  'items': <Map<String, dynamic>>[],
  'monsters': <Map<String, dynamic>>[],
  'tags': <Map<String, dynamic>>[],
  'names': <String, Map<String, List<String>>>{},
};

final defaultTags = <Tag>[
  // Tag(name: "language", value: "EN"),
  // Tag(name: "source", value: "repo"),
];

final defaultMeta = {
  'language': 'EN',
  'createdBy': '__repo__',
};

main() async {
  print("Starting...");
  // Basic moves
  print("Adding ${old.dungeonWorld.basicMoves.length} basic moves");
  for (var move in old.dungeonWorld.basicMoves) {
    json['moves']!.add(moveMapper(move, MoveCategory.basic).toJson());
  }
  // Special Moves
  print("Adding ${old.dungeonWorld.specialMoves.length} special moves");
  for (var move in old.dungeonWorld.specialMoves) {
    json['moves']!.add(moveMapper(move, MoveCategory.special).toJson());
  }
  // Spells
  print("Adding ${old.dungeonWorld.spells.length} spells");
  for (var spell in old.dungeonWorld.spells) {
    json['spells']!.add(spellMapper(spell).toJson());
  }

  // Items
  print("Adding ${old.dungeonWorld.equipment.length} items");
  for (var equip in old.dungeonWorld.equipment) {
    json['items']!.add(equipMapper(equip).toJson());
  }

  // Monsters
  print("Adding ${old.dungeonWorld.monsters.length} monsters");
  for (var mon in old.dungeonWorld.monsters) {
    json['monsters']!.add(monsterMapper(mon).toJson());
  }

  // Tags
  print("Adding ${old.dungeonWorld.tags.length} tags");
  for (var tag in old.dungeonWorld.tags) {
    json['tags']!.add(tagMapper(tag).toJson());
  }

  for (var cls in old.dungeonWorld.classes) {
    // Starting moves
    print("Adding ${cls.startingMoves.length} starting moves");
    for (var move in cls.startingMoves) {
      json['moves']!.add(moveMapper(move, MoveCategory.starting).toJson());
    }

    // Advanced Moves 1
    print("Adding ${cls.advancedMoves1.length} advanced1 moves");
    for (var move in cls.advancedMoves1) {
      json['moves']!.add(moveMapper(move, MoveCategory.advanced1).toJson());
    }

    // Advanced Moves 1
    print("Adding ${cls.advancedMoves2.length} advanced2 moves");
    for (var move in cls.advancedMoves2) {
      json['moves']!.add(moveMapper(move, MoveCategory.advanced2).toJson());
    }

    // Races
    print("Adding ${cls.raceMoves.length} races");
    for (var race in cls.raceMoves) {
      json['races']!.add(raceMapper(race, cls.key ?? makeKey(cls.name)).toJson());
    }

    // Classes
    json['classes']!.add(classMapper(cls).toJson());

    print("Adding ${cls.names.values.fold<int>(0, (t, c) => t + c.length)} ${cls.key} names");
    final Map<String, List<String>> names = (json['names'][cls.key] ??= <String, List<String>>{});
    names.addAll(cls.names);
  }

  print("Total ${json['classes']!.length} classes");

  //

  print("Running post-fixes...");

  //
  //
  await File(_jsonOut).writeAsString(jsonEncode(json));
  for (final e in json.entries) {
    await File(path.join(path.dirname(_jsonOut), e.key + ".json"))
        .writeAsString(jsonEncode(e.value));
  }
  print("Done");
}

String fix(String? str) {
  if (str == null || str.trim().isEmpty) {
    return "";
  }
  for (var _fix in strFixMap.entries) {
    str = str!.replaceAll(_fix.key, _fix.value);
  }
  return str!.trim();
}

String makeKey(String str) {
  return fix(str)
      .replaceAll(RegExp('["\']'), "")
      .replaceAll(RegExp(r'[^a-z]+', caseSensitive: false), '_')
      .replaceFirst(RegExp(r'^_'), '')
      .replaceFirst(RegExp(r'_$'), '')
      .toLowerCase();
}

Set<Dice> guessDice(String str) {
  var basicRollPattern = RegExp(r'\broll([+-][a-z]+)\b', caseSensitive: false);
  var dicePattern = RegExp(r'\b\dd\d\b', caseSensitive: false);
  var found = <Dice>{};
  var basicRollMatches = basicRollPattern.allMatches(str);
  for (var match in basicRollMatches) {
    found.add(Dice.fromJson('2d6' + match.group(1)!.toUpperCase()));
  }
  var diceMatches = dicePattern.allMatches(str);
  for (var match in diceMatches) {
    found.add(Dice.fromJson(match.input.substring(match.start, match.end)));
  }
  return found;
}

Move moveMapper(old.Move move, MoveCategory category) => Move(
      category: category,
      classKeys: move.classes,
      description: fix(move.description),
      dice: guessDice(fix(move.description)).toList(),
      explanation: fix(move.explanation ?? ""),
      key: makeKey(move.name),
      meta: defaultMeta,
      name: fix(move.name),
      tags: defaultTags,
    );

Race raceMapper(old.Move move, String classKey) => Race(
      classKeys: [classKey],
      description: fix(move.description),
      explanation: fix(move.explanation ?? ""),
      key: makeKey(move.name),
      meta: defaultMeta,
      name: fix(move.name),
      tags: defaultTags,
    );

Spell spellMapper(old.Spell spell) => Spell(
      classKeys: [],
      description: fix(spell.description),
      explanation: "",
      key: makeKey(spell.name),
      meta: defaultMeta,
      name: fix(spell.name),
      dice: guessDice(spell.description).toList(),
      tags: [...defaultTags, ...spell.tags.map((t) => tagMapper(t))],
    );

Tag tagMapper(old.Tag t) => Tag.fromJson(t.toJSON().runtimeType == String
    ? {"name": t.toJSON()}
    : {"name": t.name, "value": t.value, "description": fix(t.description)});

Item equipMapper(old.Equipment equip) => Item(
      key: makeKey(equip.name),
      meta: defaultMeta,
      name: fix(equip.name),
      description: fix(equip.description),
      tags: equip.tags.map((t) => tagMapper(t)).toList(),
    );

Monster monsterMapper(old.Monster move) => Monster(
      instinct: fix(move.instinct),
      description: fix(move.description),
      key: makeKey(move.name),
      meta: defaultMeta,
      name: fix(move.name),
      tags: defaultTags,
      moves: move.moves,
    );

CharacterClass classMapper(old.PlayerClass cls) => CharacterClass(
      alignments: AlignmentValues(
        chaotic: fix(cls.alignments['chaotic']?.description ?? ""),
        neutral: fix(cls.alignments['neutral']?.description ?? ""),
        evil: fix(cls.alignments['evil']?.description ?? ""),
        good: fix(cls.alignments['good']?.description ?? ""),
        lawful: fix(cls.alignments['lawful']?.description ?? ""),
      ),
      bonds: cls.bonds.map(fix).toList(),
      damageDice: Dice.fromJson(cls.damage.toString()),
      description: fix(cls.description),
      gearChoices: cls.gearChoices.map(
        (c) {
          return GearChoice(
            key: c.key ?? uuid(),
            description: fix(c.label),
            selections: c.gearOptions.map(
              (o) {
                Map<String, dynamic>? found;
                final generatedKey = makeKey(o.name);
                final nameWithoutNum = o.name.substring(o.name.indexOf(RegExp(r'[^0-9 ]'))).trim();
                final numFromName =
                    double.tryParse(o.name.substring(0, o.name.indexOf(RegExp(r'[^0-9 ]'))).trim());
                try {
                  found = tryFindItem(o.key ?? '', generatedKey);
                } catch (e) {
                  found = null;
                }
                final nameStartsWithNum = o.name.startsWith(RegExp(r'[0-9]+'));
                final item = found != null
                    ? Item.fromJson(found)
                    : Item(
                        key: makeKey(o.name),
                        meta: defaultMeta,
                        name: fix(o.name),
                        description: fix(o.name),
                        tags: [...defaultTags, ...o.tags.map(tagMapper)],
                      );
                final isCoinsItem = makeKey(o.name) == 'coins';
                final splitName = o.name.split(' and ');
                var foundSplit = false;
                final splitItems = splitName.length > 1
                    ? splitName.map((n) {
                        Map<String, dynamic>? found;

                        try {
                          found = tryFindItem(n, makeKey(n));
                          foundSplit = true;
                        } catch (e) {
                          found = null;
                        }

                        final nameWithoutNum = n.substring(n.indexOf(RegExp(r'[^0-9 ]'))).trim();
                        final nameStartsWithNum = n.startsWith(RegExp(r'[0-9]+'));

                        return GearOption(
                          key: makeKey(nameStartsWithNum ? nameWithoutNum : n),
                          amount: nameStartsWithNum
                              ? double.tryParse(
                                      RegExp(r'[0-9]+').firstMatch(n)?.group(0) ?? "1.0") ??
                                  1.0
                              : 1.0,
                          item: found != null ? Item.fromJson(found) : item,
                        );
                      }).toList()
                    : [
                        GearOption(
                          key: makeKey(nameStartsWithNum ? nameWithoutNum : o.name),
                          amount: nameStartsWithNum
                              ? double.tryParse(
                                      RegExp(r'[0-9]+').firstMatch(o.name)?.group(0) ?? "1.0") ??
                                  1.0
                              : 1.0,
                          item: item,
                        ),
                      ];
                var incomplete = found == null && !isCoinsItem && !foundSplit;

                return GearSelection(
                  key: generatedKey,
                  description: o.name + (incomplete ? '(TODO: INCOMPLETE)' : ''),
                  options: isCoinsItem ? [] : splitItems,
                  coins: isCoinsItem ? numFromName ?? 0 : 0,
                );
              },
            ).toList(),
          );
        },
      ).toList(),
      hp: cls.baseHP.toInt(),
      key: makeKey(cls.name),
      load: cls.load.toInt(),
      name: cls.name,
      meta: defaultMeta,
    );

final incompleteGearMap = {
  'your_fathers_mandolin_repaired': 'fathers_mandolin',
  'a_fine_lute_a_gift_from_a_noble': 'fine_lute',
  'the_pipes_with_which_you_courted_your_first_love': 'memorable_pipes',
  'a_stolen_horn': 'stolen_horn',
  'a_fiddle_never_before_played': 'unplayed_fiddle',
  'a_songbook_in_a_forgotten_tongue': 'forgotten_songbook',
};

Map<String, dynamic> tryFindItem(String key, String generatedKey) {
  final keyStartsWithNum = key.startsWith(RegExp(r'[0-9]+'));
  final keyWithoutNum =
      keyStartsWithNum ? key.substring(key.indexOf(RegExp(r'[^0-9 ]'))).trim() : key.trim();
  final keyWithoutNumSingular =
      keyWithoutNum.isEmpty ? '' : keyWithoutNum.substring(0, keyWithoutNum.length - 1);
  return json['items']!.firstWhere(
    (el) =>
        el['key'].toLowerCase() == incompleteGearMap[key] ||
        el['key'].toLowerCase() == key.toLowerCase() ||
        el['key'].toLowerCase() == generatedKey.toLowerCase() ||
        el['key'].toLowerCase() == keyWithoutNum.toLowerCase() ||
        el['key'].toLowerCase() == keyWithoutNumSingular.toLowerCase(),
  );
}
