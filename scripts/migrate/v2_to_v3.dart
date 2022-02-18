import 'dart:convert';
import 'dart:io';

import 'package:dungeon_world_data/_old/dw_data.dart' as old;
import 'package:dungeon_world_data/_utils/uuid.dart';
import 'package:dungeon_world_data/dungeon_world_data.dart';
import 'package:dungeon_world_data/gear_option.dart';
import 'package:dungeon_world_data/monster.dart';
import 'package:path/path.dart' as path;

final _jsonOut = path.join(
  path.dirname(Platform.script.path),
  'dump.json',
);

Map<String, String> strFixMap = {
  "—": "-",
  "–": "-",
  "’": "'",
  "“": "\"",
  "”": "\"",
};

final json = <String, List<Map<String, dynamic>>>{
  'moves': [],
  'races': [],
  'classes': [],
  'spells': [],
  'items': [],
  'monsters': [],
  'tags': [],
};

final defaultTags = <Tag>[
  Tag(name: "language", value: "EN"),
  Tag(name: "source", value: "repo"),
];

main() async {
  print("Starting...");
  // Basic moves
  print("Adding ${old.dungeonWorld.basicMoves.length} basic moves");
  for (var move in old.dungeonWorld.basicMoves) {
    json['moves']!.add(moveMapper(move, MoveCategory.basic).toJson());
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
  }
  print("Total ${json['classes']!.length} classes");

  // Spells
  print("Adding ${old.dungeonWorld.spells.length} spells");
  for (var spell in old.dungeonWorld.spells) {
    json['spells']!.add(spellMapper(spell).toJson());
  }

  print("Adding ${old.dungeonWorld.equipment.length} items");
  for (var equip in old.dungeonWorld.equipment) {
    json['items']!.add(equipMapper(equip).toJson());
  }

  print("Adding ${old.dungeonWorld.monsters.length} monsters");
  for (var mon in old.dungeonWorld.monsters) {
    json['monsters']!.add(monsterMapper(mon).toJson());
  }

  print("Adding ${old.dungeonWorld.tags.length} tags");
  for (var tag in old.dungeonWorld.tags) {
    json['tags']!.add(tagMapper(tag).toJson());
  }

  //
  //

  await File(_jsonOut).writeAsString(jsonEncode(json));
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
      meta: null,
      name: fix(move.name),
      tags: defaultTags,
    );

Race raceMapper(old.Move move, String classKey) => Race(
      classKeys: [classKey],
      description: fix(move.description),
      explanation: fix(move.explanation ?? ""),
      key: makeKey(move.name),
      meta: null,
      name: fix(move.name),
      tags: defaultTags,
    );

Spell spellMapper(old.Spell spell) => Spell(
      classKeys: [],
      description: fix(spell.description),
      explanation: "",
      key: makeKey(spell.name),
      meta: null,
      name: fix(spell.name),
      tags: [...defaultTags, ...spell.tags.map((t) => tagMapper(t))],
    );

Tag tagMapper(old.Tag t) => Tag.fromJson(t.toJSON().runtimeType == String
    ? {"name": t.toJSON()}
    : {"name": t.name, "value": t.value, "description": fix(t.description)});

Item equipMapper(old.Equipment equip) => Item(
      key: makeKey(equip.name),
      meta: null,
      name: fix(equip.name),
      description: fix(equip.description),
      tags: equip.tags.map((t) => tagMapper(t)).toList(),
    );

Monster monsterMapper(old.Monster move) => Monster(
      instinct: fix(move.instinct),
      description: fix(move.description),
      key: makeKey(move.name),
      meta: null,
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
      gearChoices: cls.gearChoices
          .map(
            (c) => GearChoice(
              key: c.key ?? uuid(),
              description: fix(c.label),
              selections: c.gearOptions
                  .map(
                    (o) => GearSelection(
                      description: o.name + '(TODO: INCOMPLETE)',
                      items: [
                        GearOption(
                          amount: o.name.contains(RegExp(r'[0-9]+'))
                              ? double.tryParse(
                                      RegExp(r'[0-9]+').firstMatch(o.name)?.group(0) ?? "1.0") ??
                                  1.0
                              : 1.0,
                          item: Item(
                            key: makeKey(o.name),
                            meta: null,
                            name: fix(o.name),
                            description: fix(o.name),
                            tags: defaultTags,
                          ),
                        ),
                      ],
                      gold: 0,
                    ),
                  )
                  .toList(),
            ),
          )
          .toList(),
      hp: cls.baseHP.toInt(),
      key: makeKey(cls.name),
      load: cls.load.toInt(),
      name: cls.name,
      meta: null,
    );
