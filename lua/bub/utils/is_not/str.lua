local Is = require("bub.utils.is")

---@module 'bub.utils.is_not.str'
---Negation of bub.utils.is.str
---@param value any Value to check
---@return boolean
return function(value) return not Is.str(value) end
