# CHANGELOG

## v2.0.5+10

- Fix cleric move "Deity" description

## v2.0.5+9

- Reverted: Unified "Cast A Spell" from separate Cleric/Wizard moves to one move

## v2.0.5+8

- Unified "Cast A Spell" from separate Cleric/Wizard moves to one move

## v2.0.5+7

- Added modifier to `Dice.toString()` (e.g. 2d6+3)

## v2.0.5+6

- Fixed Barbarian move "Khan Of Khans"

## v2.0.5+5

- Fixed Barbarian advanced moves

## v2.0.5+4

- Added convenience methods to Dice

## v2.0.5+3

- Added `getByKey` helper method to DWEntity
- Added modifiers to Dice

## v2.0.5+2

- Doc updates

## v2.0.5+1

- Doc updates

## v2.0.5

- DW data updates/fixes

## v2.0.4

- File structure changes
- Bugfixes

## v2.0.3+2

- Bugfix in exporting spell tags

## v2.0.3+1

- Bugfix in player classes advanced move

## v2.0.2

- Bugfix in tag parsing

## v2.0.1

- Implemented base entity equality comparitor
- Moved source files to `lib/src`, and selectively expose on `lib/` root.
- Added build steps to NPM package containing all the static data.

## v2.0.0+4

- Fixed player class export JSON keys

## v2.0.0+3

- Fixed exported alignment value

## v2.0.0+2

- Fixed exported alignment key

## v2.0.0+1

- Updated code to improve static analysis score.

## v2.0.0

- The imported data is now not parsed from JSON, but directly declared in Dart.
- Better key generation
- The data has been reorganized to lists, and data redundancy has been removed.

## v1.5.0

- Added `copy` method to every DWEntity subclass
- Unified public API for easier use
- Updated `key`s to use `Uuid().v4()` fallback

## v1.4.5

- Fixed case sensitivity in info tag parsing
- Improved tag parsing from starting gear options

## v1.4.4

- Fixed tag toJSON method

## v1.4.3

- Fixed info tag mapping in main data

## v1.4.2

- Updated tags to allow description

## v1.4.1

- Fixed Tags toString() behavior

## v1.4.0

- Simplified Tags behavior. This will break some Tag usages

## v1.3.4

- Removed test dump file from source

## v1.3.3

- Removed test package from dependencies

## v1.3.2

- Fixed 'looks' sections in some classes being concatenated and not split
- Added 2 tests

## v1.3.1

- Added missing toJSON() on GearOption

## v1.3.0

- Updated gear choice and option mapping

## v1.2.6

- Fixed tag JSON output in other classes

## v1.2.5

- Turned fields to non final, so they're changable for users

## v1.2.4

- Fix JSON output for Equipment item

## v1.2.1-v1.2.3

- Tag bugfixes

## v1.2.0

- Improved equipment loading (breaks interface for equipment items)

## v1.1.7

- Fixed spell loading

## v1.1.6

- Reduced min version of `meta` to increase compatibility

## v1.1.4, v1.1.5

- Added `key` property to some missing classes

## v1.1.2, v1.1.3

- Documentation updates

## v1.1.1

- Working release
