# Dungeon World Data

![](https://img.shields.io/pub/v/dungeon_world_data)

This dart package contains data for Dungeon World, such as classes, moves, spells, equipment, etc.

Homebew classes included:
* Immolator
* Barbarian.

## How to use
After importing, access `dungeonWorld` to access the entire data structure.
There is more information in the doc directory.

## Available data

| Name | Type | Description |
| ---- | ---- | ----------- |
| basicMoves | `List<Move>` | Dungeon World's basic moves, such as Hack & Slash, Defy Danger, etc. |
| specialMoves | `List<Move>` | Dungeon World's special moves, such as Make Camp, Take Watch, etc. |
| classes | `List<PlayerClass>` | All of Dungeon World's classes, plus some homebrews.
  See `PlayerClass` class for a full description of the usable properties. |
| equipment | `List<Equipment>` | Dungeon World's main list of items. |
| spells | `List<Spell>` | Dungeon World's main spellbook list. Each class can have its own spells
  list, see `PlayerClass` in the docs for more information. |
| monsters | `List<Monster>` | Dungeon World's main monster list. |
| tags | `List<Tag>` | List of all basic tags, along with descriptions. |

There is also a `Dice` class, with simple dice rolling functionality for your use.

## Credits

Credits to ~vindexus who created https://www.npmjs.com/package/dungeonworld-data.
The data is from there, this package simply wraps it up for Dart.

## Contributing

1. Make your changes
1. Run tests, and add new tests if appropriate. Make sure nothing breaks.
1. Create a PR, explain what your changes do.
1. Profit!
