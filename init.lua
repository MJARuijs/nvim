require("config.lazy")
require("config.lsp")
require("config.autocmds")
require("config.keymaps")
require("config.lazy-keymaps")
require("config.options")
require("lspconfig").vtsls.setup({
  -- init_options = {
  --   preferences = {
  --     -- importModuleSpecifierPreference = "project-relative",
  --     -- importModuleSpecifier = "project-relative",
  --     -- importModuleSpecifierEnding = "minimal",
  --   },
  -- },
})
-- require("colorschemes.intellij.nvim.intellij").setup()
-- vim.lsp.config("angularls")
