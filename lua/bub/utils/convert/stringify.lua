---Stringify multiple arguments into a single string message.
---Like JSON.stringify, but for Lua and also accepts strings, numbers, etc.
---@module 'bub.utils.convert.stringify'
---@param ... any Multiple arguments to format into a string message
---@return string message Formatted string message
return function(...)
  local args = { ... }
  local message = table
    .concat(
      vim.tbl_map(function(arg)
        if type(arg) == "table" then
          return vim.inspect(arg)
        else
          return tostring(arg)
        end
      end, args),
      "\n"
    )
    :match("^(.-)%s*$")
  return message
end
