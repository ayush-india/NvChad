local M = {}

M.ui = {
  theme = "catppuccin",
  transparency = true,
  lsp_semantic_tokens = true, -- needs nvim v0.9, just adds highlight groups for lsp semantic tokens

  -- cmp themeing
  cmp = {
    icons = false,
    lspkind_text = true,
    style = "flat_dark",         -- default/flat_light/flat_dark/atom/atom_colored
    border_color = "grey_fg",    -- only applicable for "default" style, use color names from base30 variables
    selected_item_bg = "simple", -- colored / simple
  },

  ------------------------------- nvchad_ui modules -----------------------------
  statusline = {
    theme = "vscode_colored", -- default/vscode/vscode_colored/minimal
    -- default/round/block/arrow separators work only for default statusline theme
    -- round and block will work for minimal theme only
    separator_style = "arrow",
  },

  telescope = {
    style = "borderless", -- borderless / bordered
  },

  -- lazyload it when there are 1+ buffers
  tabufline = {
    show_numbers = false,
    enabled = true,
    lazyload = true,
    overriden_modules = nil,
  },
  nvdash = {
    load_on_startup = true,
    header = {
      "                            ",
      "     ▄▄         ▄ ▄▄▄▄▄▄▄   ",
      "   ▄▀███▄     ▄██ █████▀    ",
      "   ██▄▀███▄   ███           ",
      "   ███  ▀███▄ ███           ",
      "   ███    ▀██ ███           ",
      "   ███      ▀ ███           ",
      "   ▀██ █████▄▀█▀▄██████▄    ",
      "     ▀ ▀▀▀▀▀▀▀ ▀▀▀▀▀▀▀▀▀▀   ",
      "                            ",
      "     Powered By  eovim    ",
      "                            ",
    },

    -- buttons = {
    --   { txt = "  Find File", keys = "ff", cmd = "Telescope find_files" },
    --   { txt = "  Recent Files", keys = "fo", cmd = "Telescope oldfiles" },
    --   { txt = "󰈭  Find Word", keys = "fw", cmd = "Telescope live_grep" },
    --   { txt = "󱥚  Themes", keys = "th", cmd = ":lua require('nvchad.themes').open()" },
    --   { txt = "  Mappings", keys = "ch", cmd = "NvCheatsheet" },
    --
    --   { txt = "─", hl = "NvDashFooter", no_gap = true, rep = true },
    --   {
    --     txt = function()
    --       local stats = require("lazy").stats()
    --       local ms = math.floor(stats.startuptime) .. " ms"
    --       return "  Loaded " .. stats.loaded .. "/" .. stats.count .. " plugins in " .. ms
    --     end,
    --     hl = "NvDashFooter",
    --     no_gap = true,
    --   },
    --
    --   { txt = "─", hl = "NvDashFooter", no_gap = true, rep = true },
    -- },
  },

  lsp = {
    -- show function signatures i.e args as you type
    signature = {
      disabled = false,
      silent = true, -- silences 'no signature help available' message from appearing
    },
  },
}
vim.cmd [[
nnoremap cpp :terminal g++ -std=c++17 % -o %:r && ./%:r<CR>
nnoremap cp :terminal ./%:r<CR>
set nowrap
set cc=80
]]
M.plugins = "custom.plugins"
M.mappings = require "custom.mappings"
return M
