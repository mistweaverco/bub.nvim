---Concatenate multiple strings, numbers or nils into a single string.
---@module 'bub.utils.str.concat'
---@param ... string|number|nil Multiple strings to concatenate
---@return string result Concatenated string
return function(...)
  local args = { ... }
  local result = {}
  for _, v in ipairs(args) do
    if v ~= nil then table.insert(result, tostring(v)) end
  end
  return table.concat(result, " ")
end
