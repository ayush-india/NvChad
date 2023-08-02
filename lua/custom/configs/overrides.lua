local M = {}

M.treesitter = {
  ensure_installed = {
    "vim",
    "lua",
    "html",
    "css",
    "javascript",
    "c",
    "rust",
    "markdown",
    "markdown_inline",
  },
  indent = {
    enable = true,
    disable = {
      "python",
    },
  },
}

M.mason = {
  ensure_installed = {
    -- lua stuff
    "lua-language-server",
    "stylua",
    -- rust
    "rust-analyzer",
    "rustfmt",

    --python 
    "pyright",
    "ruff",
    "black",

    -- old man stuff
    "clang-format",
    "clangd",
  },
}

-- git support in nvimtree
M.nvimtree = {
  git = {
    enable = true,
  },

  respect_buf_cwd = true,
  update_focused_file = {
    enable = true,
    update_root = true,
  },
  renderer = {
    highlight_git = true,
    icons = {
      show = {
        git = true,
      },
    },
  },
}

return M
