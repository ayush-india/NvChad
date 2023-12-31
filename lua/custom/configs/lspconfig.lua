local on_attach = require("plugins.configs.lspconfig").on_attach
local capabilities = require("plugins.configs.lspconfig").capabilities
local lspconfig = require "lspconfig"
local servers = { "pyright" }
for _, lsp in ipairs(servers) do
  lspconfig[lsp].setup {
    on_attach = on_attach,
    capabilities = capabilities,
  }
end
-- Configured rust_analyzer different ,needs to have some more settings
lspconfig.rust_analyzer.setup {
  on_attach = on_attach,
  settings = {
    ["rust-analyzer"] = {
      cargo = {
        extraArgs = { "-r" },
      },
    },
  },
}
lspconfig.clangd.setup {
  on_attach = on_attach,
  capabilities = capabilities,
}
