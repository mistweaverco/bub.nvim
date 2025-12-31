local M = {}

---Clone a table, either shallowly or deeply
---@module 'bub.utils.tbl.clone'
---@param tbl table Table to clone
---@param deep boolean|nil If true, performs a deep clone; otherwise, performs a shallow clone
---@return table copy Cloned table
M.clone = function(tbl, deep)
  if type(tbl) ~= "table" then return tbl end
  local copy = {}
  if not deep then
    for k, v in pairs(tbl) do
      copy[k] = v
    end
    return copy
  end
  for k, v in pairs(tbl) do
    if type(v) == "table" then
      copy[k] = M.clone(v, true)
    else
      copy[k] = v
    end
  end
  return copy
end

return M.clone
