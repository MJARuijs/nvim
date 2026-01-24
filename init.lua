require("config.lazy")
require("config.autocmds")
require("config.keymaps")
require("config.options")

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

require("oil").setup()
-- vim.cmd.colorscheme(require("intellij"))
-- vim.cmd([[colorscheme intellij]])
