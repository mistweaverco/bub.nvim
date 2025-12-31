---@module 'bub.config'

local enums = require("bub.enums")

---@class bub.config
local M = {}

---@type string
---@protected
M.plugin_name = "bub.nvim"

---@type string
---@protected
M.plugin_description =
  "A utility belt plugin for Neovim. This is what batman's utility belt would look like if he were a Neovim user."

---@type bub.Config.Default
M.config_defaults = {
  notify = {
    provider = enums.Notification.Notify.Provider.vim_notify,
  },
}

---This is the user configuration, after merging with defaults
---@type bub.Config.Default
---@protected
M.user_config = M.config_defaults

---Setup configuration
---Merge user config with defaults, so we always have a complete config with defaults filled in
---@param config bub.Config.User|nil
M.setup = function(config) M.user_config = vim.tbl_deep_extend("force", M.config_defaults, config and config or {}) end

---Get current configuration, user config merged with defaults
---So we always have a complete config with defaults filled in
---@return bub.Config.Default DefaultConfigMergedWithUserConfig
M.get = function() return M.user_config end

return M
