import 'package:dungeon_world_data/dw_data.dart';

String dumpClass<T extends DWEntity>(
    String className, T obj, String Function(T) parser,
    {bool includeKey = true}) {
  return """
    $className(${includeKey && obj.key != null ? "key: ${parseValue(obj.key)}, " : ""}${parser(obj).trim()})
  """;
}

String Function(T) createClassParser<T extends DWEntity>(
    String name, String Function(T obj) parser,
    {bool includeKey = true}) {
  return (T obj) => dumpClass(name, obj, parser, includeKey: includeKey);
}

String Function(T) createAnyParser<T extends DWEntity>(
    String Function(T obj) parser) {
  return (T obj) => parser(obj);
}

String parseArray<T>(
    String className, Iterable<T> list, String Function(T) parser) {
  return "[${list.map(parser).join(', ')}${list.length > 5 ? ',' : ''}]";
}

String parseTag(Tag tag) {
  return '''Tag.fromJSON(${parseValue(tag.toString())})''';
}

String parseTagsArray(List<Tag> list) {
  return parseArray('Tag', list, parseTag);
}

String parseDice(Dice dice) {
  return '''Dice.parse(${parseValue(dice.toString())})''';
}

String parseValue<T>(T value) {
  if (value is String) {
    String val = value;
    if (val.contains('\n')) {
      val = val.replaceAll(RegExp('\r?\n'), '\\n');
    }

    if (val.contains("'")) {
      return '"${val.replaceAll('"', "\\\"")}"';
    } else if (val.contains('"')) {
      return "'${val.replaceAll("'", "\\\'")}'";
    }

    return "'$val'";
  }
  return '$value';
}

String Function(Tag) parseTags = createAnyParser<Tag>(parseTag);
String Function(Tag) parseInfoTags = createClassParser<Tag>(
  'Tag',
  (i) => '''
        ${parseValue(i.name)},
        ${parseValue(i.value)},
        ${parseValue(i.description)},
      ''',
  includeKey: false,
);

String Function(Alignment) parseAlignment = createClassParser<Alignment>(
    'Alignment',
    (i) => '''
        name: ${parseValue(i.name)},
        description: ${parseValue(i.description)},
      ''');

String Function(Equipment) parseEquipment = createClassParser<Equipment>(
    'Equipment',
    (i) => '''
        name: ${parseValue(i.name)},
        pluralName: ${parseValue(i.pluralName)},
        description: ${parseValue(i.description)},
        tags: ${parseTagsArray(i.tags)},
      ''');

String Function(PlayerClass) parsePlayerClass = createClassParser<PlayerClass>(
    'PlayerClass',
    (i) => """
        name: ${parseValue(i.name)},
        description: ${parseValue(i.description)},
        load: ${parseValue(i.load)},
        baseHP: ${parseValue(i.baseHP)},
        damage: ${parseDice(i.damage)},
        names: ${i.names.map((r, s) => MapEntry(parseValue(r), parseArray('String', s, parseValue)))},
        bonds: ${parseArray('String', i.bonds, parseValue)},
        looks: ${parseArray('List<String>', i.looks, (dynamic s) => parseArray('String', s, parseValue))},
        alignments: ${i.alignments.map((k, v) => MapEntry(parseValue(v.name), parseAlignment(v)))},
        raceMoves: ${parseArray('Move', i.raceMoves, parseMove)},
        startingMoves: ${parseArray('Move', i.startingMoves, parseMove)},
        advancedMoves1: ${parseArray('Move', i.advancedMoves1, parseMove)},
        advancedMoves2: ${parseArray('Move', i.advancedMoves2, parseMove)},
        spells: ${parseArray('Spell', i.spells, parseSpell)},
        gearChoices: ${parseArray('GearChoice', i.gearChoices, parseGearChoice)},
      """);

String Function(Move) parseMove = createClassParser<Move>(
    'Move',
    (i) => """
        name: ${parseValue(i.name)},
        description: ${parseValue(i.description)},
        explanation: ${parseValue(i.explanation)},
        classes: ${parseArray('String', i.classes, parseValue)},
      """);

String Function(Spell) parseSpell = createClassParser<Spell>(
    'Spell',
    (i) => '''
        name: ${parseValue(i.name)},
        description: ${parseValue(i.description)},
        level: ${parseValue(i.level)},
        tags: ${parseTagsArray(i.tags)},
      ''');

String Function(GearChoice) parseGearChoice = createClassParser<GearChoice>(
    'GearChoice',
    (i) => """
        label: ${parseValue(i.label)},
        gearOptions: ${parseArray('GearOption', i.gearOptions, parseGearOption)},
      """);

String Function(GearOption) parseGearOption = createClassParser<GearOption>(
    'GearOption',
    (i) => '''
        name: ${parseValue(i.name)},
        tags: ${parseTagsArray(i.tags)},
      ''');

String Function(Monster) parseMonster = createClassParser<Monster>(
    'Monster',
    (i) => """
        name: ${parseValue(i.name)},
        description: ${parseValue(i.description)},
        instinct: ${parseValue(i.instinct)},
        tags: ${parseTagsArray(i.tags)},
        moves: ${parseArray('String', i.moves, parseValue)},
      """);

class ParseDef<T> {
  final String name;
  final Iterable<T> list;
  final String Function(T) parser;
  final String _file;
  final String _arrayName;
  String get file => _file;
  String get arrayName => _arrayName;

  ParseDef(this.name, this.list, this.parser, {String? file, String? arrayName})
      : _file = file ?? _fileFromName(name),
        _arrayName = arrayName ?? _arrayNameFromName(name);

  String parse(dynamic obj) {
    if (obj is T) {
      return parser(obj);
    }
    return '// TYPE MISMATCH: $name';
  }

  static String _fileFromName(String name) =>
      name
          .splitMapJoin(RegExp('([A-Z])'),
              onMatch: (match) => '_' + match.group(1)!.toLowerCase(),
              onNonMatch: (i) => i)
          .substring(1) +
      '.dart';

  static String _arrayNameFromName(String name) =>
      '${name[0].toLowerCase()}${name.substring(1)}List';
}
