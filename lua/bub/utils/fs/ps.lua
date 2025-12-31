---@module 'bub.utils.fs.ps'
local M = {}

---Saved as protected and reused to avoid redundant checks and improve performance.
---@protected
---@type string Path separator for the current operating system.
M.path_separator = vim.uv.os_uname().sysname == "Windows_NT" and "\\" or "/"

---Returns the path separator for the current operating system.
---@return string Path-separator for the current operating system.
M.ps = function() return M.path_separator end

return M.ps
