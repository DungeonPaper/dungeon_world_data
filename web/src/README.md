# Dungeon World Data

This NPM package contains data for Dungeon World, such as classes, moves, spells, equipment, etc.

Homebew classes included:

- Immolator
- Barbarian.

## How to use

Import the default to access the entire data structure.

```javascript
import dungeonWorld from "dw-data"
// or
const dungeonWorld = require("dw-data")
```

## Available data

| Name               | Type                             |
| ------------------ | -------------------------------- |
| `characterClasses` | `Record<string, CharacterClass>` |
| `items`            | `Record<string, Item>`           |
| `moves`            | `Record<string, Move>`           |
| `races`            | `Record<string, Race>`           |
| `spells`           | `Record<string, Spell>`          |
| `monsters`         | `Record<string, Monster>`        |
| `tags`             | `Record<string, Tag>`            |

## Credits

Credits to ~vindexus who created https://www.npmjs.com/package/dungeonworld-data.
The original data is from there and this is a direct export from the [Dart](https://pub.dev/packages/dungeon_world_data) variation, with a modified data set.

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

### Code Contributors

1. Make your changes
2. Make a PR, explain what your changes do, what could break.
3. ???
4. Profit!
