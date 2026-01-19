-- bootstrap lazy.nvim, LazyVim and your plugins
-- require("config.lazy")
-- require("config.autocmds")
-- vim.lsp.enable("angularls")
-- vim.lsp.enable("cssls")
-- vim.lsp.enable("ts_ls")
-- vim.lsp.enable("vtsls")
require("config.lazy")
require("config.autocmds")
require("config.keymaps")
require("config.options")

-- vim.cmd("highlight clear")
-- require("colorschemes.intellij").setup()

-- require("plugins")
-- require("marc.lazy")
-- local lspconfig = require("lspconfig")
-- vim.lsp.config("*", {})
-- lspconfig = require("lspconfig")
-- lspconfig.vtsls.setup({})
-- lspconfig.angularls.setup({})
vim.lsp.config("vtsls", {
  cmd = { "vtsls", "--stdio" },
  filetypes = {
    "typescript",
  },
  settings = {
    importModuleSpecifierPreference = "non-relative",
    importModuleSpecifier = "non-relative",
    importModuleSpecifierEnding = "minimal",
  },
  init_options = {
    preferences = {

      importModuleSpecifierPreference = "non-relative",
      importModuleSpecifier = "non-relative",
      importModuleSpecifierEnding = "minimal",
    },
  },
})
-- vim.api.nvim_create_autocmd("FileType", {
--   pattern = { "html" },
--   callback = function()
--     -- vim.cmd("qa")
--     vim.notify("Started!")
--     vim.treesitter.start()
--   end,
-- })
