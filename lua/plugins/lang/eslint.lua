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
                    { rule = "@angular-eslint/no-empty-lifecycle-method", severity = "warn" },
                    { rule = "@angular-eslint/prefer-inject", severity = "warn" },
                    { rule = "@angular-eslint/no-output-native", severity = "warn" },
                    { rule = "no-empty", severity = "off" },
                },
            },
        })
    end,
}
