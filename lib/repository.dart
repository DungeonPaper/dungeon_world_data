// ignore_for_file: library_prefixes, constant_identifier_names

import 'package:dungeon_world_data/dungeon_world_data.dart';

import 'data/en_US/en_US.dart' as en_US;
import 'data/pl_PL/pl_PL.dart' as pl_PL;
import 'data/pt_BR/pt_BR.dart' as pt_BR;

class Locales {
  static const en_US = 'en_US';
  static const pl_PL = 'pl_PL';
  static const pt_BR = 'pt_BR';
}

/// A repository for managing Dungeon World data.
class DungeonWorldRepository {
  /// The current version of the data.
  final version = '4.0.0';
  String _locale;

  /// The current locale
  String get currentLocale => _locale;

  /// The data repository for the current locale
  DataRepository get data => _repositories[_locale]!;
  final Map<String, DataRepository> _repositories = {};

  /// Creates a new [DungeonWorldRepository] with the given [locale].
  DungeonWorldRepository([String locale = 'en_US'])
      : assert(_isValidLocale(locale)),
        _locale = locale;

  /// Initialize the locale with an empty data set.
  ///
  /// Data must be loaded using the [loadRepository] method.
  ///
  /// [locale] must conform to the format: `xx_YY` where `xx` is the language code and `YY`
  /// is the country code.
  DataRepository initLocale(String locale) {
    if (!_isValidLocale(locale)) {
      throw ArgumentError('Invalid locale: $locale');
    }
    if (_repositories.containsKey(locale)) {
      return _repositories[locale]!;
    }

    _repositories[locale] ??= DataRepository(locale);

    if (_localesData[locale] != null) {
      _localesData[locale]!.call(this);
    }

    return _repositories[locale]!;
  }

  final _localesData = <String, void Function(DungeonWorldRepository)>{
    Locales.en_US: en_US.loadRepository,
    Locales.pl_PL: pl_PL.loadRepository,
    Locales.pt_BR: pt_BR.loadRepository,
  };

  /// Change the current locale to a new locale. Getting data will now be for this locale.
  ///
  /// Throws an [ArgumentError] if the locale has not been initialized.
  void changeLocale(String locale) {
    if (!_isValidLocale(locale)) {
      throw ArgumentError('Invalid locale: $locale');
    }
    if (_repositories[locale] == null) {
      throw ArgumentError(
          'Locale $locale not initialized. Call `initLocale` and then add your localized data to the repository.');
    }
    _locale = locale;
  }

  /// Returns a map of character classes for the current locale.
  Map<String, CharacterClass> get characterClasses => data.characterClasses;

  /// Returns a map of items for the current locale.
  Map<String, Item> get items => data.items;

  /// Returns a map of monsters for the current locale.
  Map<String, Monster> get monsters => data.monsters;

  /// Returns a map of moves for the current locale.
  Map<String, Move> get moves => data.moves;

  /// Returns a map of races for the current locale.
  Map<String, Race> get races => data.races;

  /// Returns a map of spells for the current locale.
  Map<String, Spell> get spells => data.spells;

  /// Returns a map of tags for the current locale.
  Map<String, Tag> get tags => data.tags;

  /// Converts the repository data to a JSON-serializable map.
  Map<String, dynamic> toJson() {
    final data = _repositories.map((k, v) => MapEntry(k, v.toJson()));
    return data;
  }

  /// Returns the data repository for the given [locale].
  DataRepository operator [](String locale) => _repositories[locale]!;

  /// Returns the data repository for the given [locale].
  DataRepository getRepository(String locale) {
    if (!_isValidLocale(locale)) {
      throw ArgumentError('Invalid locale: $locale');
    }

    if (_repositories[locale] == null) {
      throw ArgumentError(
          'Locale $locale not initialized. Call `initLocale` and then add your localized data to the repository.');
    }

    return _repositories[locale]!;
  }

  static bool _isValidLocale(String locale) =>
      locale.contains('_') && locale.length == 5;
}

/// A repository for managing data for a specific locale.
class DataRepository {
  /// Creates a new [DataRepository] for the given [locale].
  DataRepository(this.locale);

  final String locale;
  final Map<String, CharacterClass> characterClasses = {};
  final Map<String, Item> items = {};
  final Map<String, Monster> monsters = {};
  final Map<String, Move> moves = {};
  final Map<String, Race> races = {};
  final Map<String, Spell> spells = {};
  final Map<String, Tag> tags = {};

  /// Converts the repository data to a JSON-serializable map.
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

/// The main repository instance.
final _repo = DungeonWorldRepository();

/// Loads the repositories for all supported locales.
DungeonWorldRepository loadRepositories() {
  // en_US.loadRepository(_repo);
  // pl_PL.loadRepository(_repo);
  // pt_BR.loadRepository(_repo);
  return _repo;
}

