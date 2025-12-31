local Is = require("bub.utils.is")

---@module 'bub.utils.is_not.empty'
---Negation of bub.utils.is.empty
---@param value any Value to check
---@return boolean
return function(value) return not Is.empty(value) end
