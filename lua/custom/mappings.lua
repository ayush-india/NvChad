local M = {}
M.disabled = {
  n = {
    ["<leader>h"] = "",
    ["<leader>v"] = "",
    ["A-v"] = "",
    ["A-h"] = "",
    ["<leader>fm"] = "",
  },
  t = {
    ["A-h"] = "",
    ["A-v"] = "",
  },
}
M.general = {
  i = {
    ["jk"] = { "<ESC>", "escape insert mode", opts = { nowait = true } },
  },
  n = {
    ------------------------------------------ Git ------------------------------------------
    ["<leader>gs"] = {
      function()
        require("gitsigns").stage_hunk()
      end,
      "Stage hunk",
    },
    ["<leader>gu"] = {
      function()
        require("gitsigns").undo_stage_hunk()
      end,
      "Undo Stage hunk",
    },
    ["<leader>gS"] = {
      function()
        require("gitsigns").stage_buffer()
      end,
      "Stage buffer",
    },
    ["<leader>gR"] = {
      function()
        require("gitsigns").reset_buffer()
      end,
      "Reset Buffer",
    },
    ["<leader>gr"] = {
      function()
        require("gitsigns").reset_hunk()
      end,
      "Reset hunk",
    },
    ["<leader>gd"] = {
      function()
        require("gitsigns").diffthis()
      end,
      "Preview hunk",
    },
    ["<leader>gh"] = {
      function()
        require("gitsigns").preview_hunk()
      end,
      "Preview hunk",
    },
    ------------------------------------------ Diagnostics ------------------------------------------
    ["t"] = {
      function()
        require("trouble").toggle "diagnostics"
      end,
      "Trouble",
    },
    ["T"] = {
      function()
        require("trouble").toggle "fzf_files"
      end,
      "Trouble workspace diagnostics",
    },
    ["<leader>tq"] = {
      function()
        require("trouble").open "quickfix"
      end,
      "Trouble quickfix",
    },
    ["<leader>tr"] = {
      function()
        require("trouble").open "lsp"
      end,
      "Trouble references",
    },
    ------------------------------------------ Telescope ------------------------------------------

    ------------------------------------------  Nav------------------------------------------
    ["<C-d>"] = { "<C-d>zz" },
    ["<C-u>"] = { "<C-u>zz" },
    ------------------------------------------ Tab switching ------------------------------------------
    ["<S-l>"] = { "<cmd>bn <CR>" },
    ["<S-h>"] = { "<cmd>bp <CR>" },
    -- idk what has happende
    -- ["<S-l>"] = {
    --   function()
    --     require("nvchad_ui.tabufline").tabuflineNext()
    --   end,
    --   "goto next buffer",
    -- },
    -- ["<S-h>"] = {
    --   function()
    --     require("nvchad_ui.tabufline").tabuflinePrev()
    --   end,
    --   "goto prev buffer",
    -- },
    -- Formatting
    -- ["<leader>fm"] = { "<cmd>:Neoformat<CR>", "format the current file" },

    ["<leader>fm"] = {
      function()
        vim.lsp.buf.format { async = true }
      end,
      "lsp formatting",
    },

    ------------------------------------------ Hrequire("trouble").open()require("trouble").open()arpoon  ------------------------------------------
    ["<leader>a"] = {
      function()
        require("harpoon.mark").add_file()
      end,
      "Har add",
    },
    ["<leader>h"] = {
      function()
        require("harpoon.ui").toggle_quick_menu()
      end,
      "har menu",
    },
    ["<C-h>"] = {
      function()
        require("harpoon.ui").nav_file(1)
      end,
      "Nav har 1",
    },
    ["<C-j>"] = {
      function()
        require("harpoon.ui").nav_file(2)
      end,
      "Nav har 2",
    },
    ["<C-k>"] = {
      function()
        require("harpoon.ui").nav_file(3)
      end,
      "Nav har 3",
    },
    ["<C-x>"] = {
      function()
        require("harpoon.term").gotoTerminal(1)
      end,
      "GoTo terminal",
    },
    ["<C-l>"] = {
      function()
        require("harpoon.ui").nav_file(4)
      end,
      "Nav har 4",
    },
  },
}

return M
