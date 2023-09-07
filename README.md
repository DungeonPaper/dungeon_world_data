# Dungeon World Data

![](https://img.shields.io/pub/v/dungeon_world_data)

This dart package contains data for Dungeon World, such as classes, moves, spells, equipment, etc.

Homebew classes included:

- Immolator
- Barbarian.

## How to use

After importing, access `dungeonWorldData` to access the entire data structure.
There is more information in the doc directory.

## Available data

| Code                                | Type                          |
| ----------------------------------- | ----------------------------- |
| `dungeonWorldData.characterClasses` | `Map<String, CharacterClass>` |
| `dungeonWorldData.items`            | `Map<String, Item>`           |
| `dungeonWorldData.moves`            | `Map<String, Move>`           |
| `dungeonWorldData.races`            | `Map<String, Race>`           |
| `dungeonWorldData.spells`           | `Map<String, Spell>`          |
| `dungeonWorldData.monsters`         | `Map<String, Monster>`        |
| `dungeonWorldData.tags`             | `Map<String, Tag>`            |

There is also a `Dice` class, with simple dice rolling functionality for your use.

## Translations

The data is currently only available in English, but a localization engine is implemented.

- Use `dungeonWorldData.initLocale(locale)` to create a new locale reference.
- Use `dungeonWorldData.addForLocale` or `dungeonWorldData.addAllForLocale` to add items to the locales.
- Use `dungeonWorldData.changeLocale(locale)` to change to a different locale.

At any given locale, getting items via the generic getter `get(key)` and `[]` operator will give you
only data for the current locale.

You can use `getItemFor(locale, key)` to get data for a specific, non-current locale on the fly.

## Credits

Credits to ~vindexus who created https://www.npmjs.com/package/dungeonworld-data.
The data is from there, this package simply wraps it up for Dart.

## Contributing

I am developing this package on my free time, so any support, whether code, issues, or just stars is
very helpful to sustaining its life. If you are feeling incredibly generous and would like to donate
just a small amount to help sustain this project, I would be very very thankful!

<a href='https://ko-fi.com/casraf' target='_blank'>
  <img height='36' style='border:0px;height:36px;'
    src='https://cdn.ko-fi.com/cdn/kofi1.png?v=3'
    alt='Buy Me a Coffee at ko-fi.com' />
</a>

I welcome any issues or pull requests on GitHub. If you find a bug, or would like a new feature,
don't hesitate to open an appropriate issue and I will do my best to reply promptly.

## Code Contributors

1. Make your changes
2. Run tests, and add new tests if appropriate. Make sure nothing breaks.
3. Create a PR, explain what your changes do.
4. Profit!

If you want to translate DW data for this package:

1. Create a new folder inside `lib/data` with the locale code.
2. Copy the contents of `lib/data/en-US` to your new folder
3. Update all the localization info there, including the values of each property (not the keys!),
   and the meta tags that signify the language.
