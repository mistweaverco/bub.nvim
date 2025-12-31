---@module 'bub.utils.is.fun'
local M = {}

---Check if a value is a function.
---@param value any Value to check
---@return boolean
M.fun = function(value) return type(value) == "function" end

return M.fun
