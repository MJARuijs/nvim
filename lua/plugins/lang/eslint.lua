return {
    "esmuellert/nvim-eslint",
    config = function()
        require("nvim-eslint").setup({
            filetypes = { "javascript", "javascriptreact", "javascript.jsx", "typescript", "typescriptreact", "typescript.tsx", "vue", "svelte", "astro" },
            settings = {
                rulesCustomizations = {
                    { rule = "@angular-eslint/prefer-standalone", severity = "off" },
                    { rule = "@typescript-eslint/no-empty-function", severity = "off" },
                    { rule = "@typescript-eslint/no-inferrable-types", severity = "warn" },
                },
            },
        })
    end,
}
