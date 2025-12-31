---@module 'bub.utils.is.bool'
local M = {}

---Check if a value is a boolean.
---@param value any Value to check
---@return boolean
M.bool = function(value) return type(value) == "boolean" end

return M.bool
