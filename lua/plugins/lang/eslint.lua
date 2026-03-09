return {
  "esmuellert/nvim-eslint",
  config = function()
    require("nvim-eslint").setup({
      settings = {
        rulesCustomizations = {
          { rule = "@angular-eslint/prefer-standalone", severity = "off" },
          { rule = "@typescript-eslint/no-empty-function", severity = "off" },
        },
      },
    })
  end,
}
