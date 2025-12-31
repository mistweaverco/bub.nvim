local M = {}

---Reverse a table and return a new table
---@module 'bub.utils.tbl.reverse'
---@param t table The table to reverse
---@return table Table The reversed table
M.reverse = function(t)
  local reversed = {}
  for i = #t, 1, -1 do
    table.insert(reversed, t[i])
  end
  return reversed
end

return M
