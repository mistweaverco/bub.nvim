local Is = require("bub.utils.is")

---Negation of bub.utils.is.tbl
---@module 'bub.utils.is_not.tbl'
---@param value any Value to check
---@return boolean
return function(value) return not Is.tbl(value) end
