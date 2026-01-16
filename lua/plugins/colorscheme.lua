return {
  dir = "~/.config/nvim/colorschemes/intellij.nvim",
  lazy = false,
  priority = 1000,
  config = function()
    vim.cmd("colorscheme intellij")
  end,
}
