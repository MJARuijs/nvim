-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
--
-- Add any additional autocmds here
-- with `vim.api.nvim_create_autocmd`
--
-- Or remove existing autocmds by their group name (which is prefixed with `lazyvim_` for the defaults)
-- e.g. vim.api.nvim_del_augroup_by_name("lazyvim_wrap_spell")
local autocmd = vim.api.nvim_create_autocmd

autocmd("VimEnter", {
  command = ":silent !alacritty msg config 'window.padding={x=0,y=0}'",
})

autocmd("VimLeavePre", {
  command = ":silent !alacritty msg config 'window.padding={x=20,y=20}'",
})
