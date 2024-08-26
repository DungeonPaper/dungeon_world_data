import 'dart:convert';
import 'dart:io';

import 'package:dungeon_world_data/dungeon_world_data.dart';
import 'package:path/path.dart' as path;

void exportLanguage(String locale) async {
  final webSrc = path.join(Directory.current.path, 'web', 'src');
  final allFile = path.join(webSrc, 'raw_data', locale, 'All.json');
  final buildFile = path.join(webSrc, locale, 'dw_data.json');

  Directory(path.dirname(allFile)).createSync(recursive: true);
  Directory(path.dirname(buildFile)).createSync(recursive: true);

  final contents = dungeonWorldData.toJson()[locale]!;

  print("Writing $allFile...");
  await File(allFile).writeAsString(json.encode(contents));

  print("Writing $buildFile...");
  await File(buildFile).writeAsString(json.encode(contents));

  final List<String> files = [];

  for (final e in contents.entries) {
    final filePath = path.join(path.dirname(allFile), "${e.key}.json");

    print("Writing $filePath...");
    await File(filePath).writeAsString(json.encode(e.value));
    files.add(filePath);
  }

  final result = await Process.run('prettier', ['--write', ...files, allFile]);
  stdout.write(result.stdout);
  stderr.write(result.stderr);

  print("Done");
}

main() async {
  exportLanguage('en_US');
  exportLanguage('pt_BR');
  exportLanguage('pl_PL');
}

