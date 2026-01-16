-- require("nvim-treesitter.configs").setup({
--   ensure_installed = "all",
--   highlight = {
--     enable = true,
--   },
-- })

-- vim.api.nvim_create_autocmd("FileType", {
--   pattern = { "java" },
--   callback = function()
--     vim.treesitter.start()
--   end,
-- })
return {
  "nvim-treesitter/nvim-treesitter",
  lazy = false,
  build = ":TSUpdate",
}
