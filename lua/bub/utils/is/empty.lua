---@module 'bub.utils.is.empty'
local M = {}

---Check if the type is empty
---@param value any Value to check
---@return boolean
M.empty = function(value)
  if value == nil then return true end
  if M.tbl(value) and vim.tbl_isempty(value) then return true end
  if M.str(value) and value == "" then return true end
  return false
end

return M.empty
