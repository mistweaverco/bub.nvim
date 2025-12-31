local Is = require("bub.utils.is")

---@module 'bub.utils.is_not.number'
---Negation of bub.utils.is.bool
---@param value any Value to check
---@return boolean
return function(value) return not Is.bool(value) end
