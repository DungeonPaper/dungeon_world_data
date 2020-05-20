export type Tag = string | { [k: string]: any }

export interface Alignment {
  key: string
  name: string
  description: string
}

export interface Equipment {
  key: string
  name: string
  plural_name: string
  description: string
  tags: Tag[]
}

export interface GearOption {
  key: string
  name: string
  tag: Tag[]
}

export interface GearChoice {
  key: string
  label: string
  list: GearOption[]
}

export interface Monster {
  key: string
  name: string
  description: string
  instinct: string
  tags: Tag[]
  moves: string[]
}

export interface Move {
  key: string
  name: string
  description: string
  explanation: string
  classes: string[]
}

export interface Spell {
  key: string
  name: string
  description: string
  level: string
  tags: Tag[]
}

export interface PlayerClass {
  key: string
  name: string
  description: string
  load: number
  baseHP: number
  damage: string
  names: Record<string, string[]>
  bonds: string[]
  looks: string[][]
  alignments: Record<string, Alignment>
  race_moves: Move[]
  starting_moves: Move[]
  advanced_moves1: Move[]
  advanced_moves2: Move[]
  spells: Spell[]
  gear_choices: GearChoice[]
}

export interface DungeonWorld {
  classes: PlayerClass[]
  tags: Tag[]
  basic_moves: Move[]
  special_moves: Move[]
  equipment: Equipment[]
  monsters: Monster[]
  spells: Spell[]
}

declare const dungeonWorld: DungeonWorld
export default dungeonWorld

