return {
  "neovim/nvim-lspconfig",
  opts = {
    servers = {
      tsserver = {
        init_options = {
          preferences = {
            importModuleSpecifierPreference = "non-relative",
            includeModuleSpecifier = "non-relative",

            -- other settings
          },
        },
        settings = {
          typescript = {
            preferences = {
              importModuleSpecifier = "non-relative",
              importModuleSpecifierPreference = "non-relative",
              includeCompletionsForModuleExports = true,
              includeCompletionsForImportStatements = true,
            },
          },
        },
      },
    },
  },
}
