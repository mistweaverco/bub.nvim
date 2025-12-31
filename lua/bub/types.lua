-- Disable line too long warning for this file -- because @field lines can be long
-- luacheck: ignore 631

---@module 'bub.types'
local M = {}

---@class bub.Notification.Notify.CustomProvider
---@field notify fun(message: bub.Notification.Notify.Message, level: bub.Humans.LogLevel, opts: bub.Notification.Notify.Options|nil): nil

---@alias bub.Notification.Notify.Message any Message of the notification

---@class bub.Notification.Notify.Options
---@field title string|nil Title of the notification

---@class bub.Notification.Notify
---@field provider bub.Notification.Notify.Provider|string Notification provider
---@field custom_provider bub.Notification.Notify.CustomProvider|nil Custom provider implementation, if provider is "custom"

---@class bub.Config.Default
---@field notify bub.Notification.Notify

---@class bub.Config.User
---@field notify bub.Notification.Notify|nil

return M
