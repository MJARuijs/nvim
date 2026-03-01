-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
--
-- Add any additional autocmds here
-- with `vim.api.nvim_create_autocmd`
--
-- Or remove existing autocmds by their group name (which is prefixed with `lazyvim_` for the defaults)
-- e.g. vim.api.nvim_del_augroup_by_name("lazyvim_wrap_spell")
local autocmd = vim.api.nvim_create_autocmd

-- autocmd("VeryLazy", {
--   vim.keymap.del("n", "<leader>ft"),
-- })
if vim.g.neovide == false then
  autocmd("VimEnter", {
    command = ":silent !alacritty msg config 'window.padding={x=5,y=5}'",
  })

  autocmd("VimLeavePre", {
    command = ":silent !alacritty msg config 'window.padding={x=20,y=20}'",
  })
end

autocmd("Signal", {
  pattern = "SIGUSR1",
  callback = function()
    vim.cmd.colorscheme("intellij")
  end,
  nested = true, -- allow this autocmd to trigger `OptionSet background` event
})
