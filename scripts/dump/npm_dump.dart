// import 'dart:convert';
import 'dart:io';
// import 'package:dungeon_world_data/_old/dw_data.dart';
import 'package:path/path.dart';
// import 'package:quiver/pattern.dart';

void main() async {
  final _scr = Platform.script.path;
  final _dir = join(dirname(_scr), '..', '..');
  Directory.current = Directory(join(dirname(_scr), '..'));
  print("_dir: $_dir, current: ${Directory.current}");

  return;

  // print('Node: Building output file');
  // final before = {
  //   'tags': dungeonWorld.tags.map((el) => el.toJSON()).toList(),
  //   'basicMoves': dungeonWorld.basicMoves.map((el) => el.toJSON()).toList(),
  //   'specialMoves': dungeonWorld.specialMoves.map((el) => el.toJSON()).toList(),
  //   'classes': dungeonWorld.classes.map((el) => el.toJSON()).toList(),
  //   'equipment': dungeonWorld.equipment.map((el) => el.toJSON()).toList(),
  //   'monsters': dungeonWorld.monsters.map((el) => el.toJSON()).toList(),
  //   'spells': dungeonWorld.spells.map((el) => el.toJSON()).toList(),
  // };

  // var rawDataJsonString = jsonEncode(before);
  // // .replaceAll('"', '\\"')
  // // .replaceAll("'", "\\'")
  // // .replaceAll('\\n', '\\\\n');

  // print('Wrapping JSON string...');
  // rawDataJsonString = '''
  //     const _dw =
  //     $rawDataJsonString;
  //     _dw.default = _dw;
  //     module.exports = _dw;
  //   '''
  //     .replaceAll(' ' * 6, '');

  // print('Clearing build directory...');
  // final outputDir = Directory(join(_dir, 'npm_package'));
  // final inputDir = Directory(join(_dir, 'web', 'public'));
  // await outputDir.delete(recursive: true);
  // await outputDir.create();

  // final blacklist = <String>[];

  // await for (final file in inputDir.list(recursive: true)) {
  //   final relativePath = relative(file.path, from: inputDir.path);
  //   final outputPath = join(outputDir.path, relativePath);

  //   print('Found file: ${file.path}, relative: $relativePath');
  //   final inPattern =
  //       blacklist.any((l) => Glob(join(inputDir.path, l)).hasMatch(file.path));
  //   if (!inPattern && (await file.stat()).type == FileSystemEntityType.file) {
  //     final contents = await File(file.path).readAsString();
  //     print('Writing to file: $outputPath');
  //     if (!await Directory(dirname(outputPath)).exists()) {
  //       await Directory(dirname(outputPath)).create(recursive: true);
  //     }
  //     await File(outputPath).writeAsString(contents);
  //   }
  // }

  // final rawDataOutputPath = join(outputDir.path, 'raw_data.js');
  // print('Writing file $rawDataOutputPath...');
  // await File(rawDataOutputPath).writeAsString(rawDataJsonString);

  // print('Done.');
}
