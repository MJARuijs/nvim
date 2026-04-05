return {
    "FotiadisM/tabset.nvim",
    config = function()
        require("tabset").setup({
            defaults = {
                tabwidth = 4,
                shiftwidth = 4,
                expandtab = true,
            },
            languages = {
                -- lua = {
                --     tabwidth = 4,
                --     shiftwidth = 4,
                --     expandtab = true,
                -- },
                {
                    filetypes = { "javascript", "typescript", "typescriptreact", "jsx", "css", "scss" },
                    config = {
                        tabwidth = 2,
                        shiftwidth = 2,
                        expandtab = true,
                    },
                },
            },
        })
    end,
}
