<div align="center">

![Logo][logo]

# bub.nvim

[![Made with love][badge-made-with-love]][contributors]
[![Development status][badge-development-status]][development-status]
[![Our manifesto][badge-our-manifesto]][our-manifesto]
![Made with lua][badge-made-with-lua]
[![Latest release][badge-latest-release]][latest-release]

[What?](#what) •
[Requirements](#requirements) •
[Install](#install) •
[Usage](#usage)

<p></p>

Batmans Utility Belt (bub) for Neovim.

<p></p>

</div>

## What?

bub.nvim is a collection of utilities for Neovim.

If Batman had Neovim, this is what his utility belt would look like.

## Requirements

- [Neovim](https://github.com/neovim/neovim)
  (tested with 0.11.5, other versions may work as well)

## Install

Please use release tags when installing the plugin to ensure
compatibility and stability.

The `main` branch may contain breaking changes
and isn't guaranteed to be stable.

### Lazy.nvim

See: [lazy.nvim](https://github.com/folke/lazy.nvim)

```lua
{
  'mistweaverco/bub.nvim',
  version = 'v1.0.0',
},
```

### Packer.nvim

See: [packer.nvim](https://github.com/wbthomason/packer.nvim)

```lua
use {
  'mistweaverco/bub.nvim',
  tag = 'v1.0.0',
})
```

### Neovim built-in package manager

```lua
vim.pack.add({
  src = 'https://github.com/mistweaverco/bub.nvim.git',
  version = 'v1.0.0',
})
```

## Usage

It's a collection of utilities for Neovim.

You can require each utility module like this:

```lua
local fs_exists = require('bub.utils.fs.exists')
```

or a parent module like this:

```lua
local fs = require('bub.utils.fs')
```

If you want to have access to all utilities at once,
you can require the main module:

```lua
local bub = require('bub')
```

You can see a real-world usage example
in our own test-suite:
[here][mininmal-test-suite-setup-with-bub].



[mininmal-test-suite-setup-with-bub]: ./test/minimal_init.lua
[badge-made-with-lua]: https://mistweaverco.com/assets/badges/lua.svg
[badge-development-status]: https://mistweaverco.com/assets/badges/development-status.svg
[badge-our-manifesto]: https://mistweaverco.com/assets/badges/our-manifesto.svg
[badge-made-with-love]: https://mistweaverco.com/assets/badges/made-with-love.svg
[our-manifesto]: https://mistweaverco.com/manifesto
[development-status]: https://mistweaverco.com/roadmap?filter=bub.nvim
[contributors]: https://github.com/mistweaverco/bub.nvim/graphs/contributors
[logo]: assets/logo.svg
[badge-latest-release]: https://img.shields.io/github/v/release/mistweaverco/bub.nvim?style=for-the-badge
[latest-release]: https://github.com/mistweaverco/bub.nvim/releases/latest
