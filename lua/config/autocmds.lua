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
  command = ":silent !alacritty msg config 'window.padding={x=5,y=5}'",
})

autocmd("VimLeavePre", {
  command = ":silent !alacritty msg config 'window.padding={x=20,y=20}'",
})

-- i = 1
autocmd("Signal", {
  pattern = "SIGUSR1",
  -- group = vim.api.nvim_create_augroup("toggle_bg_on_SIGUSR1", {}),
  callback = function()
    package.loaded.theme = nil

    -- if math.fmod(i, 2) == 0 then
    --   vim.cmd([[colorscheme intellij]])
    -- else
    --   vim.cmd([[colorscheme blue]])
    -- end
    -- i = i + 1
    vim.notify("Refreshed theme")
    vim.cmd.colorscheme("intellij")
    vim.schedule(function()
      -- without this, nvim window need to be focused for the effect take into account
      vim.cmd("redraw!")
      -- vim.notify("REDREW")
    end)
  end,
  nested = true, -- allow this autocmd to trigger `OptionSet background` event
})
