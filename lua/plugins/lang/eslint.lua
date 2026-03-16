return {
    "esmuellert/nvim-eslint",
    config = function()
        require("nvim-eslint").setup({
            settings = {
                rulesCustomizations = {
                    { rule = "@angular-eslint/prefer-standalone", severity = "off" },
                    { rule = "@typescript-eslint/no-empty-function", severity = "off" },
                    { rule = "@typescript-eslint/no-inferrable-types", severity = "warn" },
                    { rule = "@angular-eslint/no-empty-lifecycle-method", severity = "warn" },
                    { rule = "no-empty", severity = "off" },
                },
            },
        })
    end,
}
