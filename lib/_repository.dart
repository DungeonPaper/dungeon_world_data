import 'package:dungeon_world_data/dungeon_world_data.dart';
import 'package:meta/meta.dart';

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

  String get currentLocale => _currentLocale!;

  void initLocale(String locale) {
    _cache[locale] ??= create();
  }

  void changeLocale(String locale) {
    _currentLocale = locale;
  }

  T create() {
    throw UnimplementedError();
  }

  void setForLocale(String locale, T item) {
    _cache[locale] = item;
  }

  T getForLocale(String locale) => _cache[locale]!;

  T get() => getForLocale(currentLocale);
}

class RepositoryList<T> extends RepositoryItem<List<T>> {
  RepositoryList([String? initialLocale]) : super(initialLocale);

  @override
  List<T> create() => <T>[];

  void addForLocale(String locale, T item) => _cache[locale]!.add(item);

  void add(T item) => addForLocale(currentLocale, item);
}

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

class DungeonWorldRepository extends RepositoryMap<String, dynamic> {
  final version = '3.0.0';

  DungeonWorldRepository([String? initialLocale]) : super(initialLocale);

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

  Map<String, CharacterClass> get characterClasses =>
      getItem('CharacterClasses').cast<String, CharacterClass>();
  Map<String, Item> get items => getItem('Items').cast<String, Item>();
  Map<String, Monster> get monsters => getItem('Monsters').cast<String, Monster>();
  Map<String, Move> get moves => getItem('Moves').cast<String, Move>();
  Map<String, Race> get races => getItem('Races').cast<String, Race>();
  Map<String, Spell> get spells => getItem('Spells').cast<String, Spell>();
  Map<String, Tag> get tags => getItem('Tags').cast<String, Tag>();

  Map<String, dynamic> toJson() => {
        "CharacterClasses": characterClasses.map(((key, value) => MapEntry(key, value.toJson()))),
        "Items": items.map(((key, value) => MapEntry(key, value.toJson()))),
        "Monsters": monsters.map(((key, value) => MapEntry(key, value.toJson()))),
        "Moves": moves.map(((key, value) => MapEntry(key, value.toJson()))),
        "Races": races.map(((key, value) => MapEntry(key, value.toJson()))),
        "Spells": spells.map(((key, value) => MapEntry(key, value.toJson()))),
        "Tags": tags.map(((key, value) => MapEntry(key, value.toJson()))),
      };
}
