# Dungeon World Data

This dart package contains data for Dungeon World, such as classes, moves, spells, equipment, etc.

Homebew classes included:
* Immolator
* Barbarian.

## How to use
After importing, access `dungeonWorld` to access the entire data structure.
There is more information in the doc directory.

## Available data

* `List<Move>` basicMoves - Dungeon World's basic moves, such as Hack & Slash, Defy Danger, etc.
* `List<Move>` specialMoves - Dungeon World's special moves, such as Make Camp, Take Watch, etc.
* `List<PlayerClass>` classes - All of Dungeon World's classes, plus some homebrews.
  See `PlayerClass` class for a full description of the usable properties.
* `List<Equipment>` equipment - Dungeon World's main list of items.
* `List<Spell>` spells - Dungeon World's main spellbook list. Each class can have its own spells
  list, see `PlayerClass` in the docs for more information.
* `List<Monster>` monsters - Dungeon World's main monster list.
* `List<Tag>` tags - List of all basic tags, along with descriptions.

There is also a `Dice` class, with simple dice rolling functionality for your use.

## Credits

Credits to ~vindexus who created https://www.npmjs.com/package/dungeonworld-data.
The data is from there, this package simply wraps it up for Dart.

## Contributing

1. Make your changes
1. Make a PR, explain what your changes do, what could break.
1. ???
1. Profit!
