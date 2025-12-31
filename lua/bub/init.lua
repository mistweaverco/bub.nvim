---@module 'bub'

---@class bub
local M = {
  utils = require("bub.utils"),
  enums = require("bub.enums"),
}

---Setup bub with user configuration.
---@param config bub.Config.User
---@return bub
M.setup = function(config)
  require("bub.config").setup(config)
  return M
end

return M
