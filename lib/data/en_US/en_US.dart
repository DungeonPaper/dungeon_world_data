// ignore_for_file: file_names
import 'package:dungeon_world_data/repository.dart';
import 'classes.dart';
import 'items.dart';
import 'monsters.dart';
import 'moves.dart';
import 'races.dart';
import 'spells.dart';
import 'tags.dart';

final _locale = 'en_US';

void loadRepository(DungeonWorldRepository repo) {
  final data = repo.initLocale(_locale);

  data.characterClasses
      .addEntries(getCharacterClassList().map((cls) => MapEntry(cls.key, cls)));
  data.items.addEntries(getItemList().map((item) => MapEntry(item.key, item)));
  data.monsters.addEntries(
      getMonsterList().map((monster) => MapEntry(monster.key, monster)));
  data.moves.addEntries(getMoveList().map((move) => MapEntry(move.key, move)));
  data.races.addEntries(getRaceList().map((race) => MapEntry(race.key, race)));
  data.spells
      .addEntries(getSpellList().map((spell) => MapEntry(spell.key, spell)));
  data.tags.addEntries(getTagList().map((tag) => MapEntry(tag.name, tag)));
}
