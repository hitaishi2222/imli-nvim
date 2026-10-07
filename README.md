<p align="center">
  <img src="assets/banner.png" alt="imli.nvim" width="1280"/>
</p>

<h1 align="center">imli.nvim</h1>

<p align="center">
  A warm ember &amp; coffee colorscheme for Neovim.<br/>
  Dark &amp; light variants &middot; Treesitter &amp; LSP &middot; warm on the eyes during late nights.
</p>

<p align="center">
  <img src="https://img.shields.io/badge/lua-2A2D34?style=flat-square&logo=lua&logoColor=51A0CF"/>
  <img src="https://img.shields.io/badge/Neovim-0.9+-004F27?style=flat-square&logo=neovim&logoColor=57A143"/>
  <img src="https://img.shields.io/badge/license-MIT-blue?style=flat-square"/>
</p>

---

## Features

- **Two hand-tuned variants** — a warm dark (`#0b1418` base) and a cream-paper light
- **Treesitter-first** — full coverage for the common captures, plus LSP semantic token overrides
- **UI consistency** — statusline, tabline (with clear active/inactive separation), popups, diagnostics, which-key, mini.icons
- **Configurable comments** — adjust comment opacity and italics to taste
- **Per-filetype overrides** — winhighlight-based, no glitch
- **Terminal colors** — sets all 16 terminal slots to match the palette

## Requirements

- Neovim **0.9+** (uses `nvim_set_hl`)
- `termguicolors` enabled (set automatically by the colorscheme)
- The native `vim.pack` install method below additionally requires Neovim **0.12+**

## Installation

### [lazy.nvim](https://github.com/folke/lazy.nvim)

```lua
{
  "your-github-username/imli-nvim",
  lazy = false,
  priority = 1000,
  config = function()
    require("imli").setup({
      -- your options here
    })
    vim.cmd("colorscheme imli")
  end,
}
```

### Native `vim.pack` (Neovim 0.12+)

No plugin manager needed — Neovim's built-in package manager:

```lua
-- init.lua
vim.pack.add({
  "https://github.com/your-github-username/imli-nvim",
  -- or the table form:
  -- { src = "https://github.com/your-github-username/imli-nvim", name = "imli" },
})

require("imli").setup()
vim.cmd("colorscheme imli")
```

That's it — the plugin is cloned on first use and tracked in the lockfile
(`vim.pack-lockfile`). Useful commands:

| Action | Command |
|--------|---------|
| Update all plugins | `vim.pack.update()` |
| Update one plugin | `vim.pack.update({ "imli" })` |
| Remove a plugin | `vim.pack.del({ "imli" })` |
| List installed | `vim.pack.get()` |

**Lazy loading** with `vim.pack` — add with `load = false`, then `packadd` on demand:

```lua
vim.pack.add({ src = "https://github.com/your-github-username/imli-nvim", load = false })

-- later, when you want it:
vim.cmd.packadd("imli")
require("imli").setup()
vim.cmd("colorscheme imli")
```

### [packer.nvim](https://github.com/wbthomason/packer.nvim)

```lua
use {
  "your-github-username/imli-nvim",
  config = function()
    require("imli").setup()
    vim.cmd("colorscheme imli")
  end,
}
```

### [vim-plug](https://github.com/junegunn/vim-plug)

```vim
Plug 'your-github-username/imli-nvim'
```

```lua
-- in init.lua:
require("imli").setup()
vim.cmd("colorscheme imli")
```

## Configuration

All options are optional — `require("imli").setup()` with no arguments uses the defaults below.

```lua
require("imli").setup({
  -- Italicize comments
  italic_comments = true,

  -- Comment visibility: 0.1 (barely visible) .. 1.0 (full color)
  comment_opacity = 1.0,

  -- Per-filetype highlight overrides (winhighlight-based).
  -- nil = use the built-in defaults from imli.filetypes.
  -- Pass your own table to override or extend:
  filetypes = nil,
  -- filetypes = {
  --   python = {
  --     ["@keyword"] = { fg = "#b48ead", bold = true },
  --     ["@function.call"] = { fg = "#9564DD" },
  --   },
  --   lua = {
  --     ["@keyword"] = { fg = "#b48ead", bold = true },
  --   },
  -- },
})
```

Then load it:

```lua
vim.cmd("colorscheme imli")
```

### Full example (lazy.nvim)

```lua
{
  "your-github-username/imli-nvim",
  lazy = false,
  priority = 1000,
  config = function()
    require("imli").setup({
      italic_comments = true,
      comment_opacity  = 0.8,   -- slightly dimmer comments
      filetypes        = nil,  -- built-in python/lua overrides
    })
    vim.cmd("colorscheme imli")
  end,
}
```

## Palette

### Dark

| Role       | Hex       | Swatch |
|------------|-----------|--------|
| `bg`       | `#0b1418` | ![bg](https://placehold.co/20x20/0b1418/0b1418) |
| `bg_alt`   | `#101a20` | ![bg_alt](https://placehold.co/20x20/101a20/101a20) |
| `fg`       | `#e8e0d4` | ![fg](https://placehold.co/20x20/e8e0d4/e8e0d4) |
| `fg_dim`   | `#5c6b7a` | ![fg_dim](https://placehold.co/20x20/5c6b7a/5c6b7a) |
| `comment`  | `#64737f` | ![comment](https://placehold.co/20x20/64737f/64737f) |
| `red`      | `#e06c60` | ![red](https://placehold.co/20x20/e06c60/e06c60) |
| `orange`   | `#d99a5b` | ![orange](https://placehold.co/20x20/d99a5b/d99a5b) |
| `yellow`   | `#d8b96a` | ![yellow](https://placehold.co/20x20/d8b96a/d8b96a) |
| `green`    | `#a3b86b` | ![green](https://placehold.co/20x20/a3b86b/a3b86b) |
| `cyan`     | `#6fb3a8` | ![cyan](https://placehold.co/20x20/6fb3a8/6fb3a8) |
| `blue`     | `#5b9dff` | ![blue](https://placehold.co/20x20/5b9dff/5b9dff) |
| `purple`   | `#b48ead` | ![purple](https://placehold.co/20x20/b48ead/b48ead) |
| `magenta`  | `#c97b8a` | ![magenta](https://placehold.co/20x20/c97b8a/c97b8a) |
| `selection`| `#2a3a44` | ![selection](https://placehold.co/20x20/2a3a44/2a3a44) |
| `border`   | `#606676` | ![border](https://placehold.co/20x20/606676/606676) |

### Light

| Role       | Hex       | Swatch |
|------------|-----------|--------|
| `bg`       | `#e7dfd2` | ![bg](https://placehold.co/20x20/e7dfd2/e7dfd2) |
| `bg_alt`   | `#f2ede4` | ![bg_alt](https://placehold.co/20x20/f2ede4/f2ede4) |
| `fg`       | `#4a4238` | ![fg](https://placehold.co/20x20/4a4238/4a4238) |
| `fg_dim`   | `#8b97a5` | ![fg_dim](https://placehold.co/20x20/8b97a5/8b97a5) |
| `comment`  | `#77838f` | ![comment](https://placehold.co/20x20/77838f/77838f) |
| `red`      | `#b4463c` | ![red](https://placehold.co/20x20/b4463c/b4463c) |
| `orange`   | `#a8641f` | ![orange](https://placehold.co/20x20/a8641f/a8641f) |
| `yellow`   | `#8a6d1f` | ![yellow](https://placehold.co/20x20/8a6d1f/8a6d1f) |
| `green`    | `#5e7a2f` | ![green](https://placehold.co/20x20/5e7a2f/5e7a2f) |
| `cyan`     | `#2f7a70` | ![cyan](https://placehold.co/20x20/2f7a70/2f7a70) |
| `blue`     | `#2f6fd0` | ![blue](https://placehold.co/20x20/2f6fd0/2f6fd0) |
| `purple`   | `#7e5a8e` | ![purple](https://placehold.co/20x20/7e5a8e/7e5a8e) |
| `magenta`  | `#a35262` | ![magenta](https://placehold.co/20x20/a35262/a35262) |
| `selection`| `#dcd2bf` | ![selection](https://placehold.co/20x20/dcd2bf/dcd2bf) |
| `border`   | `#c2b6a2` | ![border](https://placehold.co/20x20/c2b6a2/c2b6a2) |

## Supported Plugins / UI

- Built-in Neovim UI (statusline, tabline, popups, diagnostics, floats)
- Treesitter &amp; LSP semantic tokens
- [which-key](https://github.com/folke/which-key.nvim)
- [mini.icons](https://github.com/echasnovski/mini.icons)
- [render-markdown](https://github.com/MeanderingProgrammer/render-markdown.nvim)

## License

MIT
