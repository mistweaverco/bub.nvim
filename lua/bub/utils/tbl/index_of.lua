local M = {}

---Get the index of a value in a table
---@module 'bub.utils.tbl.index_of'
---@param tbl table The table to search
---@param val any The value to search for
---@return integer|nil Index of the value if found, nil otherwise
M.index_of = function(tbl, val)
  for i, v in ipairs(tbl) do
    if v == val then return i end
  end
  return nil
end

return M
