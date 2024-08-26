// ignore_for_file: library_prefixes

import 'package:dungeon_world_data/dungeon_world_data.dart';

import 'data/en_US/en_US.dart' as en_US;
import 'data/pl_PL/pl_PL.dart' as pl_PL;
import 'data/pt_BR/pt_BR.dart' as pt_BR;

class DungeonWorldRepository {
  /// The current version of the data.
  final version = '4.0.0';
  String _locale;

  /// The current locale
  String get currentLocale => _locale;

  /// The data repository for the current locale
  DataRepository get data => _repositories[_locale]!;
  final Map<String, DataRepository> _repositories = {};

  DungeonWorldRepository([String locale = 'en_US'])
      : assert(locale.isNotEmpty && locale.contains('_') && locale.length >= 3),
        _locale = locale;

  /// Initialize the locale with an empty data set.
  /// Data must be loaded using the [loadRepository] method.
  DataRepository initLocale(String locale) {
    _repositories[locale] ??= DataRepository(locale);
    return _repositories[locale]!;
  }

  /// Change the current locale to a new locale. Getting data will now be for this locale.
  void changeLocale(String locale) {
    if (_repositories[locale] == null) {
      throw ArgumentError('Locale $locale not initialized');
    }
    _locale = locale;
  }

  Map<String, CharacterClass> get characterClasses => data.characterClasses;
  Map<String, Item> get items => data.items;
  Map<String, Monster> get monsters => data.monsters;
  Map<String, Move> get moves => data.moves;
  Map<String, Race> get races => data.races;
  Map<String, Spell> get spells => data.spells;
  Map<String, Tag> get tags => data.tags;

  Map<String, dynamic> toJson() {
    final data = _repositories.map((k, v) => MapEntry(k, v.toJson()));
    return data;
  }
}

class DataRepository {
  DataRepository(this.locale);

  final String locale;
  final Map<String, CharacterClass> characterClasses = {};
  final Map<String, Item> items = {};
  final Map<String, Monster> monsters = {};
  final Map<String, Move> moves = {};
  final Map<String, Race> races = {};
  final Map<String, Spell> spells = {};
  final Map<String, Tag> tags = {};

  Map<String, dynamic> toJson() => {
        'CharacterClasses':
            characterClasses.map((k, v) => MapEntry(k, v.toJson())),
        'Items': items.map((k, v) => MapEntry(k, v.toJson())),
        'Monsters': monsters.map((k, v) => MapEntry(k, v.toJson())),
        'Moves': moves.map((k, v) => MapEntry(k, v.toJson())),
        'Races': races.map((k, v) => MapEntry(k, v.toJson())),
        'Spells': spells.map((k, v) => MapEntry(k, v.toJson())),
        'Tags': tags.map((k, v) => MapEntry(k, v.toJson())),
      };
}

final _repo = DungeonWorldRepository();

DungeonWorldRepository loadRepositories() {
  en_US.loadRepository(_repo);
  pl_PL.loadRepository(_repo);
  pt_BR.loadRepository(_repo);
  return _repo;
}

