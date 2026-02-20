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

-- require("oil").setup()

require("neotest").setup({
  adapters = {
    require("neotest-jest")({
      jestCommand = "npm test --",
      jestArguments = function(defaultArguments, context)
        return defaultArguments
      end,
      jestConfigFile = "custom.jest.config.ts",
      env = { CI = true },
      cwd = function(path)
        return vim.fn.getcwd()
      end,
      isTestFile = require("neotest-jest.jest-util").defaultIsTestFile,
    }),
  },
})
-- vim.cmd.colorscheme(require("intellij"))
-- vim.cmd([[colorscheme intellij]])
