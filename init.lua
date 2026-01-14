require("config.lazy")
require("config.lsp")
require("config.autocmds")
require("config.keymaps")
require("config.lazy-keymaps")
require("config.options")
-- require("lspconfig").ts_ls.setup({
--   -- init_options = {
--   --   preferences = {
--   --     -- importModuleSpecifierPreference = "project-relative",
--   --     -- importModuleSpecifier = "project-relative",
--   --     -- importModuleSpecifierEnding = "minimal",
--   --   },
--   -- },
-- })
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
-- vim.lsp.enable("vtsls")
-- require("colorschemes.intellij.nvim.intellij").setup()
-- vim.lsp.config("angularls")
-- require("tokyonight").setup({
--   on_highlights = function(hl, c)
--     hl.typescriptDecorator = "#ff0000"
--   end,
-- })
