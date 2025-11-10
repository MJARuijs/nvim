return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        tsserver = {
          settings = {
            typescript = {
              preferences = {
                includeCompletionsForModuleExports = true,
                includeCompletionsForImportStatements = true,
                importModuleSpecifier = "project-relative",
              },
            },
          },
        },
        --        ts_ls = {
        --          settings = {
        --            typescript = {
        --              preferences = {
        --               includeCompletionsForModuleExports = true,
        --                includeCompletionsForImportStatements = true,
        --                importModuleSpecifier = "non-relative",
        --              },
        --            },
        --          },
        --        },
        --        typescript_language_server = {
        --        settings = {
        --           typescript = {
        --            preferences = {
        --             includeCompletionsForModuleExports = true,
        --             includeCompletionsForImportStatements = true,
        --             importModuleSpecifier = "non-relative",
        --           },
        --         },
        --       },
        --},
      },
    },
  },
}
