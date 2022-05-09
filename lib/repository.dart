import '_repository.dart' as _r;

import 'data/classes.dart';
import 'data/items.dart';
import 'data/monsters.dart';
import 'data/moves.dart';
import 'data/races.dart';
import 'data/spells.dart';
import 'data/tags.dart';

final _repo = _r.DungeonWorldRepository();

_r.DungeonWorldRepository loadRepository() {
  _repo.initLocale('en-US');
  _repo.changeLocale('en-US');

  for (final cls in getCharacterClassList()) {
    _repo.characterClasses[cls.key] = cls;
  }
  for (final item in getItemList()) {
    _repo.items[item.key] = item;
  }
  for (final monster in getMonsterList()) {
    _repo.monsters[monster.key] = monster;
  }
  for (final move in getMoveList()) {
    _repo.moves[move.key] = move;
  }
  for (final race in getRaceList()) {
    _repo.races[race.key] = race;
  }
  for (final spell in getSpellList()) {
    _repo.spells[spell.key] = spell;
  }
  for (final tag in getTagList()) {
    _repo.tags[tag.name] = tag;
  }

  return _repo;
}
