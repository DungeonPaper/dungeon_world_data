import 'dart:convert';
import 'dart:io';
import 'package:dungeon_world_data/dw_data.dart';
import 'package:path/path.dart';
import 'package:quiver/pattern.dart';

void main() async {
  print('Node: Building output file');
  var before = {
    'tags': dungeonWorld.tags.map((el) => el.toJSON()).toList(),
    'basicMoves': dungeonWorld.basicMoves.map((el) => el.toJSON()).toList(),
    'specialMoves': dungeonWorld.specialMoves.map((el) => el.toJSON()).toList(),
    'classes': dungeonWorld.classes.map((el) => el.toJSON()).toList(),
    'equipment': dungeonWorld.equipment.map((el) => el.toJSON()).toList(),
    'monsters': dungeonWorld.monsters.map((el) => el.toJSON()).toList(),
    'spells': dungeonWorld.spells.map((el) => el.toJSON()).toList(),
  };

  var rawDataJsonString = jsonEncode(before)
      .replaceAll('"', '\\"')
      .replaceAll('\'', "\\'")
      .replaceAll('\\n', '\\\\n');

  print('Wrapping JSON string...');
  rawDataJsonString = '''
      var _raw = '$rawDataJsonString';
      var _dw = JSON.parse(_raw);
      _dw.default = _dw;
      module.exports = _dw;
    '''
      .replaceAll(' ' * 6, '');

  print('Clearing build directory...');
  var outputDir = Directory(join(Directory.current.path, 'npm_package'));
  var inputDir = Directory(join(Directory.current.path, 'web'));
  await outputDir.delete(recursive: true);
  await outputDir.create();

  var blacklist = ['scripts/**/*', 'scripts/*'];

  await for (var file in inputDir.list(recursive: true)) {
    var relativePath = relative(file.path, from: inputDir.path);
    var outputPath = join(outputDir.path, relativePath);

    print('Found file: ${file.path}, relative: $relativePath');
    var inPattern =
        blacklist.any((l) => Glob(join(inputDir.path, l)).hasMatch(file.path));
    if (!inPattern && (await file.stat()).type == FileSystemEntityType.file) {
      var contents = await File(file.path).readAsString();
      print('Writing to file: $outputPath');
      if (!await Directory(dirname(outputPath)).exists()) {
        await Directory(dirname(outputPath)).create(recursive: true);
      }
      await File(outputPath).writeAsString(contents);
    }
  }

  var rawDataOutputPath = join(outputDir.path, 'raw_data.js');
  print('Writing file $rawDataOutputPath...');
  await File(rawDataOutputPath).writeAsString(rawDataJsonString);

  print('Done.');
}
