class Repository {}

class RepositoryItem<T> {
  final Map<String, Map<String, T>> _cache = {};
  String currentLocale;

  RepositoryItem({
    required this.currentLocale,
  });

  List<T> get list {
    _ensureLocale(currentLocale);
    return _cache[currentLocale]!.values.toList();
  }

  Map<String, T> get map {
    _ensureLocale(currentLocale);
    return _cache[currentLocale]!;
  }

  void registerLocale(String locale) {
    if (_cache[locale] != null) {
      return;
    }
    _cache[locale] = {};
  }

  void addItems(String locale, Map<String, T> items) {
    _ensureLocale(locale);
    _cache[locale]!.addAll(items);
  }

  void _ensureLocale(String locale) {
    if (_cache[locale] == null) {
      throw Exception('Locale $locale does not exist.');
    }
  }
}
