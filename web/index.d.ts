export interface DungeonWorldRepository {
  CharacterClasses: Record<string, CharacterClass>
  Items: Record<string, Item>
  Monsters: Record<string, Monster>
  Moves: Record<string, Move>
  Races: Record<string, Race>
  Spells: Record<string, Spell>
  Tags: Record<string, Tag>
}

export const dungeonWorld: DungeonWorldRepository
export default dungeonWorld

export interface CharacterClass {
  _meta: Meta
  name: string
  key: string
  description: string
  damageDice: string
  load: number
  hp: number
  alignments: Alignments
  bonds: string[]
  gearChoices: GearChoice[]
}

export interface Meta {
  language: string
  createdBy: string
}

export interface Alignments {
  _meta: Meta
  good: string
  evil: string
  lawful: string
  neutral: string
  chaotic: string
}
export interface GearChoice {
  key: string
  description: string
  selections: GearSelection[]
  preselect: number[]
  maxSelections: number | null
}

export interface GearSelection {
  key: string
  description: string
  options: GearOption[]
  coins: number
}

export interface GearOption {
  key: string
  item: Item
  amount: number
}

export interface Item {
  _meta: Meta
  key: string
  name: string
  description: string
  tags: Tag[]
}

export interface Tag {
  name: string
  value: string | number | null
  description: string
}

export interface Monster {
  _meta: Meta
  key: string
  name: string
  description: string
  instinct: string
  tags: Tag[]
  moves: string[]
}

export interface MoveLike {
  _meta: Meta
  key: string
  name: string
  description: string
  explanation: string
  classKeys: string[]
  tags: Tag[]
}

export interface Move extends MoveLike {
  dice: string[]
  category: MoveCategory
  favorited: boolean
}

export interface Spell extends MoveLike {
  level: string
  dice: string[]
  prepared: boolean
}
export interface Race extends MoveLike {
  //
}

export enum MoveCategory {
  Basic = "basic",
  Special = "special",
  Starting = "starting",
  Advanced1 = "advanced1",
  Advanced2 = "advanced2",
}
