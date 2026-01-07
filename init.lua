-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")
require("config.autocmds")
-- vim.lsp.enable("angularls")
-- vim.lsp.enable("cssls")
-- vim.lsp.enable("ts_ls")
-- vim.lsp.enable("vtsls")

local lspconfig = require("lspconfig")
-- vim.lsp.config("*", {})
lspconfig = require("lspconfig")
lspconfig.vtsls.setup({})
lspconfig.angularls.setup({})
