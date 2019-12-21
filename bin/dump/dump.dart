import 'dart:io';
import 'package:dart_style/dart_style.dart';
import 'package:dungeon_world_data/dw_data.dart';
import 'package:dungeon_world_data/monster.dart';
import 'package:dungeon_world_data/move.dart';
import 'package:dungeon_world_data/player_class.dart';
import 'package:dungeon_world_data/spell.dart';
import 'package:dungeon_world_data/tag.dart';
import 'package:path/path.dart';
import 'package:dungeon_world_data/equipment.dart';
import 'parsers.dart';

main() async {
  print("Parsing");
  stdout.flush();
  List<ParseDef> arrays = [
    ParseDef<Tag>('Tag', dungeonWorld.tags, parseInfoTags),
    ParseDef<Equipment>(
        'Equipment', dungeonWorld.equipment, parseEquipment),
    ParseDef<PlayerClass>(
        'PlayerClass', dungeonWorld.classes, parsePlayerClass),
    ParseDef<Monster>('Monster', dungeonWorld.monsters, parseMonster),
    ParseDef<Move>('Move', dungeonWorld.basicMoves, parseMove,
        arrayName: 'basicMovesList'),
    ParseDef<Spell>('Spell', dungeonWorld.spells, parseSpell),
    ParseDef<Move>('Move', dungeonWorld.specialMoves, parseMove,
        arrayName: 'specialMovesList'),
  ];

  String arraysImports = ({
    "import 'package:dungeon_world_data/tag.dart';",
    "import 'package:dungeon_world_data/dice.dart';",
    "import 'package:dungeon_world_data/spell.dart';",
    "import 'package:dungeon_world_data/move.dart';",
    "import 'package:dungeon_world_data/alignment.dart';",
    "import 'package:dungeon_world_data/gear_choice.dart';",
    "import 'package:dungeon_world_data/_cache.dart';",
  }..addAll(Set.from(
          arrays.map((a) => "import 'package:dungeon_world_data/${a.file}';"))))
      .join('\n');

  // String arraysDeclares =
  //     arrays.map((a) => "List<${a.name}> ${a.arrayName} = [];").join('\n');
  String arrayFills = arrays
      .map((arr) => arr.list
          .map((item) => "${arr.arrayName}.add(${arr.parse(item)});")
          .join('\n'))
      .join('\n');
  print("Writing string");
  String str = """
    ${arraysImports}
    initData() {
      ${arrayFills}
    }
  """;
  File file = File(join(Directory.current.path, 'output.dart'));
  File beforeFormatFile =
      File(join(Directory.current.path, 'before-format.dart'));
  print("Formatting");
  try {
    DartFormatter formatter = DartFormatter();
    String formatted = formatter.format(str);
    print("Writing to file");
    file.writeAsString(formatted);
    if (beforeFormatFile.existsSync()) {
      beforeFormatFile.delete();
    }
  } on FormatterException catch (e) {
    beforeFormatFile.writeAsString(str);
    print(e);
  } catch (e) {
    print(e);
  }
}
