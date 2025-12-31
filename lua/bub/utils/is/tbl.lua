---@module 'bub.utils.is.tbl'
local M = {}

---Check if a value is a table.
---@param value any Value to check
---@return boolean
M.tbl = function(value) return type(value) == "table" end

return M.tbl
