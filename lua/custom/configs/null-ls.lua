local null_ls = require("null-ls")

null_ls.setup({
  debug = true,
    sources = {
        null_ls.builtins.formatting.stylua,
        null_ls.builtins.formatting.rustfmt,
        null_ls.builtins.formatting.clang_format,
        null_ls.builtins.formatting.ruff,
        null_ls.builtins.formatting.mypy,
        null_ls.builtins.formatting.black,

    },
})
