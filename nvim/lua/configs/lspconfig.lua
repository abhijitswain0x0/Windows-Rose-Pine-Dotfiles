require("nvchad.configs.lspconfig").defaults()
local servers = { "pyright", "ruff", "html", "cssls", "ts_ls", "clangd" }
vim.lsp.enable(servers)