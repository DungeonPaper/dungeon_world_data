import 'dart:convert';
import 'dart:io';

import 'package:path/path.dart' as path;

final webSrc = path.join(Directory.current.path, 'web', 'src');
final jsonInDir = path.join(webSrc, 'raw_data');
final dartOutDir = path.join(Directory.current.path, 'lib', 'data');

final clsNameMap = {
  'Moves': 'Move',
  'Races': 'Race',
  'CharacterClasses': 'CharacterClass',
  'Spells': 'Spell',
  'Items': 'Item',
  'Monsters': 'Monster',
  'Tags': 'Tag',
};

final clsImportMap = {
  'Moves': 'move',
  'Races': 'race',
  'CharacterClasses': 'character_class',
  'Spells': 'spell',
  'Items': 'item',
  'Monsters': 'monster',
  'Tags': 'tag',
};

final clsFileMap = {
  'CharacterClasses': 'classes',
};

generateLocale(String locale) async {
  final inputFile = path.join(jsonInDir, locale, 'All.json');
  final outputFile = path.join(dartOutDir, locale);
  final loaderFile = path.join(outputFile, '$locale.dart');

  Directory(outputFile).createSync(recursive: true);

  final Map<String, dynamic> map =
      json.decode(await File(inputFile).readAsString());

  final List<String> files = [];

  for (final e in map.entries) {
    if (clsNameMap[e.key] == null) {
      continue;
    }
    print('Parsing $e');
    final file =
        path.join(outputFile, "${clsFileMap[e.key] ?? e.key.toLowerCase()}.dart");
    print('Writing to $file');
    final list = (e.value as Map<String, dynamic>)
        .values
        .map((r) => '${clsNameMap[e.key]}.fromJson(${json.encode(r)})');

    await File(file).writeAsString('''
import 'package:dungeon_world_data/${clsImportMap[e.key]}.dart';

List<${clsNameMap[e.key]}> get${clsNameMap[e.key]}List() => [
  ${list.join(',\n\t')}
];
''');
    files.add(file);
  }

  print('Writing loader file: $loaderFile');
  await File(loaderFile).writeAsString('''
// ignore_for_file: file_names
import 'package:dungeon_world_data/repository.dart';
import 'classes.dart';
import 'items.dart';
import 'monsters.dart';
import 'moves.dart';
import 'races.dart';
import 'spells.dart';
import 'tags.dart';

void loadRepository(DungeonWorldRepository repo) {
  repo.initLocale('$locale');
  repo.changeLocale('$locale');

  repo.characterClasses
      .addEntries(getCharacterClassList().map((cls) => MapEntry(cls.key, cls)));
  repo.items.addEntries(getItemList().map((item) => MapEntry(item.key, item)));
  repo.monsters.addEntries(
      getMonsterList().map((monster) => MapEntry(monster.key, monster)));
  repo.moves.addEntries(getMoveList().map((move) => MapEntry(move.key, move)));
  repo.races.addEntries(getRaceList().map((race) => MapEntry(race.key, race)));
  repo.spells
      .addEntries(getSpellList().map((spell) => MapEntry(spell.key, spell)));
  repo.tags.addEntries(getTagList().map((tag) => MapEntry(tag.name, tag)));
}
''');
  final result = await Process.run('dart', ['format', ...files, loaderFile]);
  stdout.write(result.stdout);
}

main() async {
  generateLocale('en_US');
  generateLocale('pt_BR');
  generateLocale('pl_PL');
}

