require("config.lazy")
require("config.autocmds")
require("config.keymaps")
require("config.options")

-- vim.lsp.config("vtsls", {
--     cmd = { "vtsls", "--stdio" },
--     filetypes = {
--         "typescript",
--     },
--     settings = {
--         importModuleSpecifierPreference = "non-relative",
--         importModuleSpecifier = "non-relative",
--         importModuleSpecifierEnding = "minimal",
--     },
--     init_options = {
--         preferences = {
--             importModuleSpecifierPreference = "non-relative",
--             importModuleSpecifier = "non-relative",
--             importModuleSpecifierEnding = "minimal",
--         },
--     },
-- })

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
-- require("typescript-tools").setup({
--     settings = {
--         tsserver_file_preferences = {
--             includeInlayParameterNameHints = "all",
--             includeCompletionsForModuleExports = true,
--             quotePreference = "auto",
--         },
--         tsserver_format_options = {
--             allowIncompleteCompletions = false,
--             allowRenameOfImportPath = false,
--         },
--     },
-- })

require("flutter-tools").setup({
    -- flutter_path = "/home/marc/dev/flutter/flutter/bin",
    root_patterns = { ".git", "pubspec.yaml" },
    lsp = {
        color = { -- show the derived colours for dart variables
            enabled = true, -- whether or not to highlight color variables at all, only supported on flutter >= 2.10
            background = false, -- highlight the background
            background_color = nil, -- required, when background is transparent (i.e. background_color = { r = 19, g = 17, b = 24},)
            foreground = false, -- highlight the foreground
            virtual_text = true, -- show the highlight using virtual text
            virtual_text_str = "■", -- the virtual text character to highlight
        },
        -- on_attach = my_custom_on_attach,
        -- capabilities = my_custom_capabilities, -- e.g. lsp_status capabilities
        --- OR you can specify a function to deactivate or change or control how the config is created
        -- capabilities = function(config)
        --   config.specificThingIDontWant = false
        --   return config
        -- end,
        -- see the link below for details on each option:
        -- https://github.com/dart-lang/sdk/blob/master/pkg/analysis_server/tool/lsp_spec/README.md#client-workspace-configuration
        settings = {
            showTodos = true,
            completeFunctionCalls = true,
            -- analysisExcludedFolders = { "<path-to-flutter-sdk-packages>" },
            renameFilesWithClasses = "prompt", -- "always"
            enableSnippets = true,
            updateImportsOnRename = true, -- Whether to update imports and other directives when files are renamed. Required for `FlutterRename` command.
        },
    },
    -- flutter_lookup_cmd = "/home/marc/dev/flutter/bin",
}) -- use defaults
