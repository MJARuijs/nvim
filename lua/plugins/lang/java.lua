return {
    "nvim-java/nvim-java",
    config = function()
        require("java").setup({
            java_debug_adapter = {
                -- enable = false,
            },
        })
        vim.lsp.enable("jdtls")

        vim.keymap.set("n", "<leader>jr", function()
            vim.cmd([[JavaRunnerRunMain]])
        end, { desc = "Run program" })

        vim.keymap.set("n", "<leader>jR", function()
            vim.cmd([[JavaRunnerStopMain]])
            vim.cmd([[JavaRunnerRunMain]])
        end, { desc = "Run program" })

        vim.keymap.set("n", "<leader>jq", function()
            vim.cmd([[JavaRunnerStopMain]])
        end, { desc = "Stop program" })

        vim.keymap.set("n", "<leader>jl", function()
            vim.cmd([[JavaRunnerToggleLogs]])
        end, { desc = "Toggle logs" })

        vim.keymap.set("n", "<leader>jp", function()
            vim.cmd([[JavaProfile]])
        end, { desc = "Open profile UI" })

        vim.keymap.set("n", "<leader>jta", function()
            vim.cmd([[JavaTestRunAllTests]])
        end, { desc = "Run all Test Files" })

        vim.keymap.set("n", "<leader>jtc", function()
            vim.cmd([[JavaTestRunCurrentClass]])
        end, { desc = "Run all tests in current class" })

        vim.keymap.set("n", "<leader>jtm", function()
            vim.cmd([[JavaTestRunCurrentMethod]])
        end, { desc = "Run current test method" })

        -- vim.keymap.set("n", "<leader>jt", "<cmd>JavaTestRunCurrentClass<CR><C-w>j", { desc = "Run Current Test File" })
        vim.keymap.set("n", "<leader>jT", "<cmd>JavaTestViewLastReport<CR>", { desc = "View Test Result" })
        -- vim.api.nvim_set_keymap("n", "<leader>jr", "<leader>ft sh run.sh<CR>", {})
        -- vim.keymap.set("n", "<leader>jr", function()
        --   local terminal = require("snacks").terminal
        --   -- terminal:close()
        --   print(terminal.closed)
        --   -- vim.cmd([[<leader>ft]])
        -- end, {})
        vim.lsp.config("jdtls", {
            settings = {
                java = {
                    configuration = {
                        runtimes = {
                            {
                                name = "JavaSE-21",
                                -- path = "/opt/jdk-21",
                                path = vim.fn.expand("/usr/lib/jvm/java-21-openjdk/"),
                                default = true,
                            },
                        },
                    },
                    format = {
                        enabled = true,
                        tabSize = 10,
                    },
                    inlayHints = {
                        parameterNames = {
                            enabled = "none",
                        },
                    },
                },
            },
        })
    end,
    setup = function() end,
}
