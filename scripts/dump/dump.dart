import 'dart:io';
import 'package:dart_style/dart_style.dart';
import 'package:dungeon_world_data/dw_data.dart';
import 'package:path/path.dart';
import 'package:pedantic/pedantic.dart';
import 'parsers.dart';

void main() async {
  print('Parsing');
  var arrays = [
    ParseDef<Tag>('Tag', dungeonWorld.tags, parseInfoTags),
    ParseDef<Equipment>('Equipment', dungeonWorld.equipment, parseEquipment),
    ParseDef<PlayerClass>(
        'PlayerClass', dungeonWorld.classes, parsePlayerClass),
    ParseDef<Monster>('Monster', dungeonWorld.monsters, parseMonster),
    ParseDef<Move>('Move', dungeonWorld.basicMoves, parseMove,
        arrayName: 'basicMovesList'),
    ParseDef<Spell>('Spell', dungeonWorld.spells, parseSpell),
    ParseDef<Move>('Move', dungeonWorld.specialMoves, parseMove,
        arrayName: 'specialMovesList'),
  ];

  var arraysImports = ({"part of '_dungeon_world_data.dart';"}..addAll(Set.from(
          arrays.map((a) => "import 'package:dungeon_world_data/${a.file}';"))))
      .join('\n');

  // String arraysDeclares =
  //     arrays.map((a) => "List<${a.name}> ${a.arrayName} = [];").join('\n');
  var arrayFills = arrays
      .map((arr) => arr.list
          .map((item) => '${arr.arrayName}.add(${arr.parse(item)});')
          .join('\n'))
      .join('\n');
  print('Writing string');
  var str = '''
    ${arraysImports}
    void initData() {
      ${arrayFills}
    }
  ''';
  var file = File(join(Directory.current.path, 'output.dart'));
  var beforeFormatFile =
      File(join(Directory.current.path, 'before-format.dart'));
  print('Formatting');
  try {
    var formatter = DartFormatter();
    var formatted = formatter.format(str);
    print('Writing to file');
    unawaited(file.writeAsString(formatted));
    if (beforeFormatFile.existsSync()) {
      print('Deleting before-format file');
      unawaited(beforeFormatFile.delete());
    }
  } on FormatterException catch (e) {
    print(e);
    print('Writing before-format file');

    unawaited(beforeFormatFile.writeAsString(str));
  } catch (e) {
    print(e);
  }
}
