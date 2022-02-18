import '../character_class.dart';
import '../alignment.dart';
import '../item.dart';
import '../monster.dart';
import '../move.dart';
import '../race.dart';
import '../spell.dart';
import '../tag.dart';

class Repository {
  String _currentLocale;
  String get currentLocale => _currentLocale;
  final Set<String> _locales = {};

  final Map<String, RepositoryItem<AlignmentValue>> _alignments = {};
  final Map<String, RepositoryItem<CharacterClass>> _classes = {};
  final Map<String, RepositoryItem<Item>> _items = {};
  final Map<String, RepositoryItem<Monster>> _monsters = {};
  final Map<String, RepositoryItem<Race>> _races = {};
  final Map<String, RepositoryItem<Move>> _moves = {};
  final Map<String, RepositoryItem<Spell>> _spells = {};
  final Map<String, RepositoryItem<Tag>> _tags = {};

  Repository({
    required String currentLocale,
  }) : _currentLocale = currentLocale;

  RepositoryItem<AlignmentValue> get alignments => _withCurrentLocale(_alignments);
  RepositoryItem<CharacterClass> get classes => _withCurrentLocale(_classes);
  RepositoryItem<Item> get items => _withCurrentLocale(_items);
  RepositoryItem<Monster> get monsters => _withCurrentLocale(_monsters);
  RepositoryItem<Race> get races => _withCurrentLocale(_races);
  RepositoryItem<Move> get moves => _withCurrentLocale(_moves);
  RepositoryItem<Spell> get spells => _withCurrentLocale(_spells);
  RepositoryItem<Tag> get tags => _withCurrentLocale(_tags);

  void registerLocale(String locale) {
    if (localeExists(locale)) {
      return;
    }

    for (var entry in _allRepositories.entries) {
      if (entry.value[locale] != null) {
        continue;
      }
      entry.value[locale] = RepositoryItem(locale: locale);
    }

    _locales.add(locale);
  }

  void changeLocale(String locale) {
    _ensureLocale(locale);
    _currentLocale = locale;
  }

  void loadItems<T>(String locale, Map<String, T> items) {
    registerLocale(locale);
    switch (T) {
      case AlignmentValue:
        _alignments[locale]!.addItems(items.cast<String, AlignmentValue>());
        break;
      case CharacterClass:
        _classes[locale]!.addItems(items.cast<String, CharacterClass>());
        break;
      case Item:
        _items[locale]!.addItems(items.cast<String, Item>());
        break;
      case Monster:
        _monsters[locale]!.addItems(items.cast<String, Monster>());
        break;
      case Race:
        _races[locale]!.addItems(items.cast<String, Race>());
        break;
      case Move:
        _moves[locale]!.addItems(items.cast<String, Move>());
        break;
      case Spell:
        _spells[locale]!.addItems(items.cast<String, Spell>());
        break;
      case Tag:
        _tags[locale]!.addItems(items.cast<String, Tag>());
        break;
      default:
        throw Exception("Type $T not supported");
    }
  }

  Map<String, Map<String, RepositoryItem<dynamic>>> get _allRepositories => {
        'alignments': _alignments,
        'classes': _classes,
        'items': _items,
        'monsters': _monsters,
        'races': _races,
        'moves': _moves,
        'spells': _spells,
        'tags': _tags,
      };

  void _ensureLocale(String locale) {
    if (!localeExists(locale)) {
      throw Exception('Locale $locale does not exist.');
    }
  }

  bool localeExists(String locale) => _locales.contains(locale);

  T _withCurrentLocale<T>(Map<String, T> iter) {
    _ensureLocale(currentLocale);
    if (iter.isEmpty || iter[currentLocale] == null) {
      throw Exception('Repository Item does not exist for locale $currentLocale');
    }
    return iter[currentLocale]!;
  }
}

class RepositoryItem<T> {
  final Map<String, T> _cache = {};
  final String locale;

  RepositoryItem({required this.locale});

  List<T> get list {
    return _cache.values.toList();
  }

  Map<String, T> get map {
    return _cache;
  }

  void addItems(Map<String, T> items) {
    _cache!.addAll(items);
  }
}
