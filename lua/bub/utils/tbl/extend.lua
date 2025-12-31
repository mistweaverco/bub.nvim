local M = {}

---Deep extend a table with another table.
---@module 'bub.utils.tbl.extend'
---@param src table Destination table
---@param dest table Source table
---@return table extended Extended table
M.extend = function(src, dest)
  if type(dest) ~= "table" or type(src) ~= "table" then return dest end
  for k, v in pairs(src) do
    if type(v) == "table" then
      if type(dest[k]) ~= "table" then dest[k] = {} end
      dest[k] = M.extend(dest[k], v)
    else
      dest[k] = v
    end
  end
  return dest
end

return M.extend
