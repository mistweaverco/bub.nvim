local config = require("bub.config")
local enums = require("bub.enums")
local is_not_empty = require("bub.utils.is_not.empty")
local str_concat = require("bub.utils.str.concat")
local stringify = require("bub.utils.convert.stringify")

---Generic notification function
---@module 'bub.utils.notify'
---@param message bub.Notification.Notify.Message Message of the notification
---@param level bub.Humans.LogLevel The level of the notification
---@param opts bub.Notification.Notify.Options|nil Options for the notification
return function(message, level, opts)
  opts = opts or {}
  local conf = config.get()
  if conf.notify.provider == enums.Notification.Notify.Provider.vim_notify then
    vim.notify(stringify(message), enums.Humans.LogLevel[level] or enums.Humans.LogLevel.info, opts)
    return
  elseif conf.notify.provider == enums.Notification.Notify.Provider.print then
    print(str_concat(level, stringify(message), is_not_empty(opts) and stringify(opts) or nil))
  elseif type(conf.notify.provider) == enums.Notification.Notify.Provider.custom then
    if conf.notify.custom_provider and type(conf.notify.custom_provider.notify) == "function" then
      conf.notify.custom_provider.notify(message, enums.Humans.LogLevel[level] or enums.Humans.LogLevel.info, opts)
    else
      error("Custom notify provider is not properly configured.")
    end
  else
    error("Unknown notify provider: " .. tostring(conf.notify.provider))
  end
end
