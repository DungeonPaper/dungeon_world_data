import en_US from "./en_US/dw_data.json"
import pt_BR from "./pt_BR/dw_data.json"
import pl_PL from "./pl_PL/dw_data.json"
export * from "./types"

import { DungeonWorldRepository } from "./types"

type Locale = keyof typeof _locales

const _locales = {
  en_US: en_US,
  pt_BR: pt_BR,
  pl_PL: pl_PL,
} as const

class DungeonWorldData {
  #locale: Locale = "en_US"

  changeLocale(locale: Locale): void {
    this.#locale = locale
  }

  get data(): DungeonWorldRepository {
    return _locales[this.#locale] as any
  }
}

const dungeonWorldData = new DungeonWorldData()

export default dungeonWorldData
export { dungeonWorldData }
