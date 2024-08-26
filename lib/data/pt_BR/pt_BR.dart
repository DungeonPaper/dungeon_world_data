// ignore_for_file: file_names
import 'package:dungeon_world_data/repository.dart';
import 'classes.dart';
import 'items.dart';
import 'monsters.dart';
import 'moves.dart';
import 'races.dart';
import 'spells.dart';
import 'tags.dart';

void loadRepository(DungeonWorldRepository repo) {
  repo.initLocale('pt_BR');
  repo.changeLocale('pt_BR');

  repo.characterClasses
      .addEntries(getCharacterClassList().map((cls) => MapEntry(cls.key, cls)));
  repo.items.addEntries(getItemList().map((item) => MapEntry(item.key, item)));
  repo.monsters.addEntries(
      getMonsterList().map((monster) => MapEntry(monster.key, monster)));
  repo.moves.addEntries(getMoveList().map((move) => MapEntry(move.key, move)));
  repo.races.addEntries(getRaceList().map((race) => MapEntry(race.key, race)));
  repo.spells
      .addEntries(getSpellList().map((spell) => MapEntry(spell.key, spell)));
  repo.tags.addEntries(getTagList().map((tag) => MapEntry(tag.name, tag)));
}
