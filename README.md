# Dungeon World Data

This dart package contains data for Dungeon World, such as classes, moves, spells, equipment, etc.

## How to install

First, add to your pubspec:
```
dependencies:
  ..
  dungeon_world_data: ^1.0.0
```

After importing, access `dungeonWorld` to access the entire data structure.
There is more information in the doc directory.

## Available data

* `Map<String, Move>` moves
* `List<Move>` basicMoves
* `List<Move>` specialMoves
* `Map<String, PlayerClass>` classes
* `Map<String, Equipment>` equipment
* `Map<String, Spell>` spells
* `Map<String, Monster>` monsters
* `Map<String, Tag>` tags

There is also a `Dice` class, with simple dice rolling functionality for your use.

## Credits

Credits to ~vindexus who created https://www.npmjs.com/package/dungeonworld-data.
The data is from there, this package simply wraps it up for Dart.

## Contributing

1. Make your changes
1. Make a PR, explain what your changes do, what could break.
1. ???
1. Profit!
