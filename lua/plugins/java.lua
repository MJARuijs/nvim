return {
    "nvim-java/nvim-java",
    config = function()
        require("java").setup()
        vim.lsp.enable("jdtls")
        vim.keymap.set("n", "<leader>Jt", "<cmd>JavaTestRunCurrentClass<CR>", { desc = "Run Current Test File" })
        vim.keymap.set("n", "<leader>Jr", "<cmd>JavaTestViewLastReport<CR>", { desc = "View Test Result" })
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
                },
            },
        })
    end,
}
