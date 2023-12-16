import 'package:dungeon_world_data/dungeon_world_data.dart';
import 'package:meta/meta.dart';

/// A repository containing game data separated by locale.
/// This class represents a single item in the repository.
/// All the localizations are stored in here, and you may use the various methods to access them,
/// change the locale, or manipulate localized versions of data.
class RepositoryItem<T> {
  String? _currentLocale;

  @protected
  final _cache = <String, T>{};

  RepositoryItem([String? initialLocale]) : _currentLocale = initialLocale {
    if (_currentLocale != null) {
      initLocale(_currentLocale!);
      changeLocale(_currentLocale!);
    }
  }

  /// The current locale.
  String get currentLocale => _currentLocale!;

  /// Initialize the repository for a new locale.
  /// If one already exists, it will not be overwritten.
  void initLocale(String locale) {
    _cache[locale] ??= create();
  }

  /// Change the current locale to a new locale. Getting data will now be for this locale.
  void changeLocale(String locale) {
    _currentLocale = locale;
  }

  /// Create a new item.
  T create() {
    throw UnimplementedError();
  }

  /// Set the item data for the given locale.
  void setForLocale(String locale, T item) {
    _cache[locale] = item;
  }

  /// Get the item data for the given locale.
  T getForLocale(String locale) => _cache[locale]!;

  /// Get the item data for the current locale.
  T get() => getForLocale(currentLocale);

  /// Get the item data for the current locale.
  void set(T item) => setForLocale(currentLocale, item);
}

/// A repository containing game data separated by locale.
/// Use this to store data that is locale-specific, such as names, descriptions, etc.
class RepositoryMap<K, V> extends RepositoryItem<Map<K, V>> {
  RepositoryMap([String? initialLocale]) : super(initialLocale);

  @override
  Map<K, V> create() => <K, V>{};

  V getItemFor(String locale, String key) => _cache[locale]![key]!;

  V getItem(String key) => getItemFor(currentLocale, key);

  void addForLocale(String locale, K key, V item) => _cache[locale]![key] = item;

  void add(K key, V item) => addForLocale(currentLocale, key, item);

  void addAllForLocale(String locale, Map<K, V> items) => _cache[locale]!.addAll(items);

  void addAll(Map<K, V> items) => addAllForLocale(currentLocale, items);

  Iterable<V> get values => _cache[currentLocale]!.values;

  Iterable<K> get keys => _cache[currentLocale]!.keys;
}

/// The main repository of Dungeon World data.
/// This class contains all the data for the game, and is the main entry point for accessing it.
/// You can switch locale using [changeLocale] and get the data for the current locale using the various getters.
class DungeonWorldRepository extends RepositoryMap<String, dynamic> {
  /// The current version of the data.
  final version = '3.0.0';

  DungeonWorldRepository([String? initialLocale]) : super(initialLocale);

  /// Create the initial data structure.
  @override
  create() => <String, Map<String, dynamic>>{
        'CharacterClasses': <String, CharacterClass>{},
        'Items': <String, Item>{},
        'Monsters': <String, Monster>{},
        'Moves': <String, Move>{},
        'Races': <String, Race>{},
        'Spells': <String, Spell>{},
        'Tags': <String, Tag>{},
      };

  /// A mapping of all the character classes.
  /// The key in each entry is a unique key to the class, and the value is the class itself.
  Map<String, CharacterClass> get characterClasses =>
      getItem('CharacterClasses').cast<String, CharacterClass>();

  /// A mapping of all the items.
  /// The key in each entry is a unique key to the item, and the value is the item itself.
  Map<String, Item> get items => getItem('Items').cast<String, Item>();

  /// A mapping of all the monsters.
  /// The key in each entry is a unique key to the monster, and the value is the monster itself.
  Map<String, Monster> get monsters => getItem('Monsters').cast<String, Monster>();

  /// A mapping of all the moves.
  /// The key in each entry is a unique key to the move, and the value is the move itself.
  Map<String, Move> get moves => getItem('Moves').cast<String, Move>();

  /// A mapping of all the races.
  /// The key in each entry is a unique key to the race, and the value is the race itself.
  Map<String, Race> get races => getItem('Races').cast<String, Race>();

  /// A mapping of all the spells.
  /// The key in each entry is a unique key to the spell, and the value is the spell itself.
  Map<String, Spell> get spells => getItem('Spells').cast<String, Spell>();

  /// A mapping of all the tags.
  /// The key in each entry is a unique key to the tag, and the value is the tag itself.
  Map<String, Tag> get tags => getItem('Tags').cast<String, Tag>();

  /// Dump all the data as a JSON map. Same as `toJsonAsMaps()`
  /// See [toJsonAsMaps]
  /// See [toJsonAsLists]
  Map<String, dynamic> toJson() => toJsonAsMaps();

  /// Dump all the data as a JSON map. Same as `toJson()`
  /// See [toJson]
  /// See [toJsonAsLists]
  Map<String, dynamic> toJsonAsMaps() => {
        "CharacterClasses": characterClasses.map(((key, value) => MapEntry(key, value.toJson()))),
        "Items": items.map(((key, value) => MapEntry(key, value.toJson()))),
        "Monsters": monsters.map(((key, value) => MapEntry(key, value.toJson()))),
        "Moves": moves.map(((key, value) => MapEntry(key, value.toJson()))),
        "Races": races.map(((key, value) => MapEntry(key, value.toJson()))),
        "Spells": spells.map(((key, value) => MapEntry(key, value.toJson()))),
        "Tags": tags.map(((key, value) => MapEntry(key, value.toJson()))),
      };

  /// Dump all the data as a JSON lists, instead of key => value maps.
  /// See [toJson]
  /// See [toJsonAsMaps]
  Map<String, dynamic> toJsonAsLists() => {
        "CharacterClasses": characterClasses.values.map(((value) => value.toJson())).toList(),
        "Items": items.values.map(((value) => value.toJson())).toList(),
        "Monsters": monsters.values.map(((value) => value.toJson())).toList(),
        "Moves": moves.values.map(((value) => value.toJson())).toList(),
        "Races": races.values.map(((value) => value.toJson())).toList(),
        "Spells": spells.values.map(((value) => value.toJson())).toList(),
        "Tags": tags.values.map(((value) => value.toJson())).toList(),
      };
}
