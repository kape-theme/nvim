# kape-nvim

A warm, dark Neovim colorscheme rooted in coffee, earth, and amber — built for long coding sessions.

> Part of the [Kape](https://github.com/gabiuz/kape) color system.

## Requirements

- Neovim ≥ 0.8
- A terminal with true color support (`termguicolors`)

## Installation

### [lazy.nvim](https://github.com/folke/lazy.nvim)

```lua
{
  "gabiuz/kape-nvim",
  lazy = false,
  priority = 1000,
  config = function()
    vim.cmd.colorscheme("kape")
  end,
}
```

### [packer.nvim](https://github.com/wbthomason/packer.nvim)

```lua
use {
  "gabiuz/kape-nvim",
  config = function()
    vim.cmd.colorscheme("kape")
  end,
}
```

### [vim-plug](https://github.com/junegunn/vim-plug)

```vim
Plug 'gabiuz/kape-nvim'
colorscheme kape
```

## Usage

```lua
vim.cmd.colorscheme("kape")
```

To customise Kape, call `setup()` **before** applying the colorscheme:

```lua
require("kape").setup({ ... })
vim.cmd.colorscheme("kape")
```

## Configuration

All options are optional. Defaults are shown below.

```lua
require("kape").setup({
  -- Draw backgrounds as NONE so your terminal background shows through.
  transparent = false,

  -- Populate vim.g.terminal_color_* for built-in terminal.
  terminal_colors = true,

  -- Style overrides for specific token kinds.
  -- Each value is a vim.api.keyset.highlight table.
  styles = {
    comment   = { italic = true },
    keyword   = { italic = false },
    type      = { italic = true },
    parameter = { italic = false },
  },

  -- How diagnostic virtual text is coloured.
  -- "colored" → tinted background per severity.
  -- "grey"    → flat dimmed foreground, no tint.
  diagnostic_virtual_text = "colored",

  -- List of plugin names whose window backgrounds should be cleared.
  -- Useful when transparent = false but you want, e.g., telescope to be borderless.
  -- Example: { "telescope", "neo-tree" }
  background_clear = {},

  -- List of plugin names to skip highlight generation for entirely.
  -- Example: { "nvim-tree.lua", "bufferline.nvim" }
  disabled_plugins = {},

  -- Per-plugin config options.
  plugins = {
    bufferline = {
      underline_selected = false,
      underline_visible  = false,
      underline_fill     = false,
      bold               = true,
    },
  },

  -- Inject arbitrary highlight overrides on top of Kape's own groups.
  -- Receives the resolved Kape.Scheme and must return a table of hl groups.
  override = nil,
  -- override = function(scheme)
  --   return {
  --     Normal = { bg = scheme.editor.background, fg = scheme.base.white },
  --   }
  -- end,

  -- Modify the semantic color scheme before highlights are generated.
  -- Receives the scheme, raw palette, and color utilities.
  override_scheme = nil,
  -- override_scheme = function(scheme, palette, colors)
  --   scheme.base.orange = "#d08060"
  --   return scheme
  -- end,
})
```

## Supported Plugins

Integrations are loaded automatically. Plugins that are not installed are skipped safely.

| Plugin | Notes |
|---|---|
| [nvim-treesitter](https://github.com/nvim-treesitter/nvim-treesitter) | ✅ |
| [telescope.nvim](https://github.com/nvim-telescope/telescope.nvim) | ✅ supports `background_clear` |
| [fzf-lua](https://github.com/ibhagwan/fzf-lua) | ✅ |
| [nvim-tree.lua](https://github.com/nvim-tree/nvim-tree.lua) | ✅ |
| [neo-tree.nvim](https://github.com/nvim-neo-tree/nvim-neo-tree.nvim) | ✅ supports `background_clear` |
| [bufferline.nvim](https://github.com/akinsho/bufferline.nvim) | ✅ per-plugin options via `plugins.bufferline` |
| [lualine.nvim](https://github.com/nvim-lualine/lualine.nvim) | ✅ |
| [gitsigns.nvim](https://github.com/lewis6991/gitsigns.nvim) | ✅ |
| [blink.cmp](https://github.com/Saghen/blink.cmp) | ✅ |
| [nvim-lspconfig](https://github.com/neovim/nvim-lspconfig) | ✅ diagnostic & semantic token groups |

## Palette

| Name | Hex | &nbsp; |
|---|---|---|
| `background` | `#181616` | ![#181616](https://placehold.co/16x16/181616/181616.png) |
| `foreground` | `#d4be98` | ![#d4be98](https://placehold.co/16x16/d4be98/d4be98.png) |
| `red` | `#b53535` | ![#b53535](https://placehold.co/16x16/b53535/b53535.png) |
| `orange` | `#c87941` | ![#c87941](https://placehold.co/16x16/c87941/c87941.png) |
| `green` | `#b4c76e` | ![#b4c76e](https://placehold.co/16x16/b4c76e/b4c76e.png) |
| `yellow` | `#e7bb5c` | ![#e7bb5c](https://placehold.co/16x16/e7bb5c/e7bb5c.png) |
| `blue` | `#7b8fd4` | ![#7b8fd4](https://placehold.co/16x16/7b8fd4/7b8fd4.png) |
| `purple` | `#b06880` | ![#b06880](https://placehold.co/16x16/b06880/b06880.png) |
| `aqua` | `#689d8a` | ![#689d8a](https://placehold.co/16x16/689d8a/689d8a.png) |

## License

See [LICENSE](./LICENSE).
