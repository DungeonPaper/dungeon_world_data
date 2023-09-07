# Dungeon World Data

This NPM package contains data for Dungeon World, such as classes, moves, spells, equipment, etc.

Homebew classes included:

- Immolator
- Barbarian.

## How to use

Import the default to access the entire data structure.

```javascript
import dungeonWorld from "dw-data";
// or
const dungeonWorld = require("dw-data");
```

## Available data

| Name         | Type                 | Description                                                                                                                       |
| ------------ | -------------------- | --------------------------------------------------------------------------------------------------------------------------------- |
| basicMoves   | `Array<Move>`        | Dungeon World's basic moves, such as Hack & Slash, Defy Danger, etc.                                                              |
| specialMoves | `Array<Move>`        | Dungeon World's special moves, such as Make Camp, Take Watch, etc.                                                                |
| classes      | `Array<PlayerClass>` | All of Dungeon World's classes, plus some homebrews. See `PlayerClass` class for a full description of the usable properties.     |
| equipment    | `Array<Equipment>`   | Dungeon World's main list of items.                                                                                               |
| spells       | `Array<Spell>`       | Dungeon World's main spellbook list. Each class can have its own spells list, see `PlayerClass` in the docs for more information. |
| monsters     | `Array<Monster>`     | Dungeon World's main monster list.                                                                                                |
| tags         | `Array<Tag>`         | List of all basic tags, along with descriptions.                                                                                  |

## Credits

Credits to ~vindexus who created https://www.npmjs.com/package/dungeonworld-data.
The original data is from there and this is a direct export from the [Dart](https://pub.dev/packages/dungeon_world_data) variation, with a modified data set.

## Contributing

1. Make your changes
1. Make a PR, explain what your changes do, what could break.
1. ???
1. Profit!
