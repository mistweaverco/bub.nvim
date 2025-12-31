local config = require("bub.config")
local is_not_empty = require("bub.utils.is_not.empty")
local str_concat = require("bub.utils.str.concat")
local stringify = require("bub.utils.convert.stringify")
local types = require("bub.types")

---Generic notification function
---@module 'bub.utils.notify'
---@param message bub.Notification.Notify.Message Message of the notification
---@param level bub.Humans.LogLevel The level of the notification
---@params opts bub.Notification.Notify.Options|nil Options for the notification
return function(message, level, opts)
  opts = opts or {}
  local conf = config.get()
  if conf.notify.provider == types.ConfigNotificationNotifyProvider.vim_notify then
    vim.notify(stringify(message), types.Humans.LogLevel[level] or types.Humans.LogLevel.info, opts)
    return
  elseif conf.notify.provider == types.ConfigNotificationNotifyProvider.print then
    print(str_concat(level, stringify(message), is_not_empty(opts) and stringify(opts) or nil))
  elseif type(conf.notify.provider) == types.ConfigNotificationNotifyProvider.custom then
    if conf.notify.custom_provider and type(conf.notify.custom_provider.notify) == "function" then
      conf.notify.custom_provider.notify(
        message,
        types.HumanReadableLogLevel[level] or types.Humans.LogLevel.info,
        opts
      )
    else
      error("Custom notify provider is not properly configured.")
    end
  else
    error("Unknown notify provider: " .. tostring(conf.notify.provider))
  end
end
