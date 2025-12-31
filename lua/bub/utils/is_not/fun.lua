local Is = require("bub.utils.is")

---Negation of bub.utils.is.fun
---@module 'bub.utils.is_not.fun'
---@param value any Value to check
---@return boolean
return function(value) return not Is.fun(value) end
