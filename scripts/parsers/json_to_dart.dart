import 'dart:convert';
import 'dart:io';

import 'package:path/path.dart' as path;

final webSrc = path.join(Directory.current.path, 'web');
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
  final outputFile = path.join(dartOutDir, locale);
  final loaderFile = path.join(outputFile, '$locale.dart');

  Directory(outputFile).createSync(recursive: true);

  final List<String> files = [];

  for (final k in clsNameMap.keys) {
    final inputFile = path.join(jsonInDir, locale, '$k.json');
    final Map<String, dynamic> map =
        json.decode(await File(inputFile).readAsString());
    final file =
        path.join(outputFile, "${clsFileMap[k] ?? k.toLowerCase()}.dart");
      print('Writing to $file');
      final list = (map)
          .values
          .map((r) => '${clsNameMap[k]}.fromJson(${json.encode(r)})');
    await File(file).writeAsString('''
        import 'package:dungeon_world_data/${clsImportMap[k]}.dart';

        List<${clsNameMap[k]}> get${clsNameMap[k]}List() => [
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
final _locale = '$locale';

void loadRepository(DungeonWorldRepository repo) {
  final data = repo.initLocale(_locale);

  data.characterClasses .addEntries(getCharacterClassList().map((cls) => MapEntry(cls.key, cls)));
  data.items.addEntries(getItemList().map((item) => MapEntry(item.key, item)));
  data.monsters.addEntries( getMonsterList().map((monster) => MapEntry(monster.key, monster)));
  data.moves.addEntries(getMoveList().map((move) => MapEntry(move.key, move)));
  data.races.addEntries(getRaceList().map((race) => MapEntry(race.key, race)));
  data.spells .addEntries(getSpellList().map((spell) => MapEntry(spell.key, spell)));
  data.tags.addEntries(getTagList().map((tag) => MapEntry(tag.name, tag)));
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

