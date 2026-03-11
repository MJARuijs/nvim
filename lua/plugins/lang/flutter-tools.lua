return {
    "nvim-flutter/flutter-tools.nvim",
    lazy = false,
    dependencies = {
        "nvim-lua/plenary.nvim",
        "stevearc/dressing.nvim", -- optional for vim.ui.select
    },
    config = function()
        vim.keymap.set("n", "<C-f>", "", { desc = "Flutter" })
        vim.keymap.set("n", "<leader>F", "", { desc = "Flutter" })

        vim.keymap.set("n", "<leader>Fo", function()
            vim.cmd("FlutterOutlineToggle")
        end, { desc = "Toggle Outline" })

        vim.keymap.set("n", "<leader>Fa", function()
            vim.cmd("FlutterAttach")
        end, { desc = "Attach" })

        vim.keymap.set("n", "<leader>Fd", function()
            vim.cmd("FlutterDevices")
        end, { desc = "Devices" })

        vim.keymap.set("n", "<leader>Ft", function()
            vim.cmd("FlutterLogToggle")
        end, { desc = "Toggle Terminal" })

        vim.keymap.set("n", "<leader>Fc", function()
            vim.cmd("FlutterLogClear")
        end, { desc = "Clear Terminal" })

        vim.keymap.set("n", "<leader>Fr", function()
            vim.cmd("FlutterRun")
        end, { desc = "Run" })

        vim.keymap.set("n", "<leader>Fq", function()
            vim.cmd("FlutterQuit")
        end, { desc = "Quit" })
    end,
    -- config = true,
}
