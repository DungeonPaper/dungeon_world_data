import _data from "./dw_data.json"
export * from "./types"

import { DungeonWorldRepository } from "./types"

const dungeonWorldData: DungeonWorldRepository = _data as any

export default dungeonWorldData
export { dungeonWorldData }
