local path_separator = require("bub.utils.fs.ps")
local ps = path_separator()

---@module 'bub.utils.fs.join_paths'
local M = {}

---Joins multiple path segments into a single path string.
---@param ... string Path segments to join.
---@return string Joined-path string.
M.join_paths = function(...)
  local paths = { ... }
  return table.concat(paths, ps)
end

return M.join_paths
