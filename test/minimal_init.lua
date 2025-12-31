vim.o.termguicolors = true
vim.opt.swapfile = false
vim.opt.shada = ""
vim.opt.rtp = {
  vim.env.VIMRUNTIME,
  vim.fn.getcwd(),
}
vim.cmd("runtime! plugin/bub.nvim")
local fs_exists = require("bub.utils.fs.exits")
local join_paths = require("bub.utils.fs.join_paths")
local plenary_path = join_paths(vim.fn.getcwd(), "test", "tmp", "plugins", "plenary.nvim")
if not fs_exists(plenary_path) then
  require("bub.utils.git.clone_sync")(require("bub.utils.git.plenary_repo_url"), plenary_path)
end
vim.opt.rtp:append(plenary_path)
vim.cmd("runtime! plugin/plenary.vim")
_G.TEST = true
