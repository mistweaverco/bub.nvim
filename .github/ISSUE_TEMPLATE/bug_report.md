---
name: Bug report
about: Create a report to help us improve
title: "Bug Report: "
labels: bug
type: bug
assignees: '@gorilamoe'

---

Please provide a clear and concise description of what the bug is.

Ideally you can provide an isolated example to help us reproduce the issue.

You can use the following template:

```lua
vim.o.termguicolors = true
vim.opt.swapfile = false
vim.opt.shada = ""
vim.opt.rtp = {
  vim.env.VIMRUNTIME,
  vim.fn.getcwd(),
}
vim.cmd("runtime! plugin/bub.nvim")

-- Steps to reproduce
-- e.g.
local bub = require("bub")
-- reports it exists when it does not
print(vim.inspect(bub.utils.fs.exist("non_existent_file")))
```

Save it as `minimal_repro.lua`
in a clone of the repository.

Then run it with `nvim -u minimal_repro.lua`.

This helps us understand the exact issue in an isolated environment.

Attach the `minimal_repro.lua` file to this issue report.
