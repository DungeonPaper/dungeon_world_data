import 'dart:convert';
import 'dart:io';

import 'package:dungeon_world_data/dungeon_world_data.dart';
import 'package:path/path.dart' as path;

final _jsonOut = path.join(path.dirname(Platform.script.path), 'dumps', 'All.json');
final _jsonOutCopy =
    path.join(path.dirname(Platform.script.path), '..', '..', 'web', 'src', 'lib', 'dw_data.json');

main() async {
  final contents = dungeonWorldData.toJson();
  print("Writing $_jsonOut...");
  await File(_jsonOut).writeAsString(json.encode(contents));
  print("Writing $_jsonOutCopy...");
  await File(_jsonOutCopy).writeAsString(json.encode(contents));

  for (final e in contents.entries) {
    final filePath = path.join(path.dirname(_jsonOut), e.key + ".json");
    print("Writing $filePath...");
    await File(filePath).writeAsString(json.encode(e.value));
  }

  print("Done");
}
