local M = {}

---Check if a table contains a value, with optional deep search
---@module 'bub.utils.tbl.contains'
---@param tbl table The table to search
---@param val any The value to search for
---@param deep boolean Whether to perform a deep search, recursively checking nested tables
---@return boolean Exists is true if the value is found, false otherwise
M.contains = function(tbl, val, deep)
  for _, v in ipairs(tbl) do
    if deep and type(v) == "table" then
      if M.contains(v, val, true) then return true end
    end
    if v == val then return true end
  end
  return false
end

return M.contains
