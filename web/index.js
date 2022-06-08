const dungeonWorldData = require("./dw_data.json")
const MoveCategory = {
  Basic: "basic",
  Special: "special",
  Starting: "starting",
  Advanced1: "advanced1",
  Advanced2: "advanced2",
}
exports = module.exports = {
  ...dungeonWorldData,
  MoveCategory,
}
