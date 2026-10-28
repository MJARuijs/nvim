return {
    "syntaxpresso/syntaxpresso.nvim",
    config = function()
        vim.keymap.set("n", "<leader>jc", function()
            vim.cmd([[Syntaxpresso]])
        end, { desc = "Syntaxpresso" })
    end,
}
