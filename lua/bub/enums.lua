---@module 'bub.enums'
local M = {
  Humans = {
    ---@enum bub.Humans.LogLevel
    LogLevel = {
      trace = 0,
      debug = 1,
      info = 2,
      warn = 3,
      error = 4,
    },
  },
  Notification = {
    Notify = {
      ---@enum bub.Notification.Notify.Provider
      Provider = {
        vim_notify = "vim.notify",
        print = "print",
        -- custom provider that implements the bub.Notification.Notify interface
        -- basically default vim.notify signature
        custom = "custom",
      },
    },
  },
}

return M
