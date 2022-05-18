import 'dart:convert';
import 'dart:io';

import 'package:path/path.dart' as path;

final _jsonIn = path.join(
  path.dirname(Platform.script.path),
  'dumps',
  'all.json',
);
final _dartOut = path.join(
  path.dirname(Platform.script.path),
  '..',
  '..',
  'lib',
  'data',
);

final clsNameMap = {
  'Moves': 'Move',
  'Races': 'Race',
  'Classes': 'CharacterClass',
  'Spells': 'Spell',
  'Items': 'Item',
  'Monsters': 'Monster',
  'Tags': 'Tag',
};
final clsImportMap = {
  'Moves': 'move',
  'Races': 'race',
  'Classes': 'character_class',
  'Spells': 'spell',
  'Items': 'item',
  'Monsters': 'monster',
  'Tags': 'tag',
};

main() async {
  final Map<String, dynamic> _json = json.decode(await File(_jsonIn).readAsString());
  for (final e in _json.entries) {
    if (clsNameMap[e.key] == null) {
      continue;
    }
    final _path = path.join(_dartOut, e.key.toLowerCase() + ".dart");
    print('Writing to $_path');
    final list = e.value.map((r) => '${clsNameMap[e.key]}.fromJson(${json.encode(r)})');

    await File(_path).writeAsString('''
import 'package:dungeon_world_data/${clsImportMap[e.key]}.dart';
List<${clsNameMap[e.key]}> get${clsNameMap[e.key]}List() => [
  ${list.join(',\n\t')}
];
''');
    await Process.run('dart', ['format', _path]);
  }
}
