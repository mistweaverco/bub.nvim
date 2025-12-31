---@module 'bub.utils.is.number'
local M = {}

---Check if a value is a number.
---@param value any Value to check
---@return boolean
M.number = function(value) return type(value) == "number" end

return M.number
