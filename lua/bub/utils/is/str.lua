---@module 'bub.utils.is.str'
local M = {}

---Check if a value is a string.
---@param value any Value to check
---@return boolean
M.str = function(value) return type(value) == "string" end

return M.str
