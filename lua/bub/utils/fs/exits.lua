---@module 'bub.utils.fs.exists'
local M = {}

---Checks if a file or directory exists at the given path.
---@param path string
---@param type? "file"|"directory"|"link" Optional type to check for.
---@return boolean
M.exists = function(path, type)
  local stat = vim.uv.fs_stat(path)
  if type == "file" then
    return stat ~= nil and stat.type == "file"
  elseif type == "directory" then
    return stat ~= nil and stat.type == "directory"
  elseif type == "link" then
    return stat ~= nil and stat.type == "link"
  end
  return stat ~= nil
end

return M.exists
