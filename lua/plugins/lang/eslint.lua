return {
  "esmuellert/nvim-eslint",
  config = function()
    require("nvim-eslint").setup({

      settings = {
        rulesCustomizations = {
          { rule = "@angular-eslint/prefer-standalone", severity = "off" },
        },
      },
    })
  end,
}
