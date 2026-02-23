return {
  dir = "/home/marc/.config/nvim/colorschemes/intellij.nvim",
  lazy = false,
  priority = 900,
  config = function()
    vim.cmd([[colorscheme intellij]])
  end,
}
