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
                    filetypes = { "javascript", "typescript", "typescriptreact", "json", "jsx", "css", "scss", "xml", "yml", "yaml" },
                    filetypes = { "javascript", "html", "htmlangular", "typescript", "typescriptreact", "jsx", "css", "scss", "xml", "yml" },
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
