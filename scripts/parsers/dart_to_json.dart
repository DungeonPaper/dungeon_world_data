import 'dart:convert';
import 'dart:io';

import 'package:dungeon_world_data/dungeon_world_data.dart';
import 'package:path/path.dart' as path;

final _jsonOut = path.join(path.dirname(Platform.script.path), 'dumps', 'all.json');
final _jsonOutCopy =
    path.join(path.dirname(Platform.script.path), '..', '..', 'web', 'dw_data.json');

main() async {
  final contents = dungeonWorldData.toJson();
  await File(_jsonOut).writeAsString(json.encode(contents));
  await File(_jsonOutCopy).writeAsString(json.encode(contents));

  for (final e in contents.entries) {
    final filePath = path.join(path.dirname(_jsonOut), e.key + ".json");
    print("Writing $filePath...");
    await File(filePath).writeAsString(json.encode(e.value));
  }

  print("Done");
}
