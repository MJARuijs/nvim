-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
--
-- vim.keymap.del("n", "<A-h>")
vim.api.nvim_set_keymap("n", "gD", "<cmd>lua vim.lsp.buf.declaration()<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "gd", "<cmd>lua vim.lsp.buf.definition()<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<A-q>", "<cmd><leader>bd<CR>", { noremap = true, silent = true })

vim.api.nvim_set_keymap("n", "<A-h>", "<cmd>vertical resize -1<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<A-j>", "<cmd>horizontal resize -1<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<A-k>", "<cmd>horizontal resize +1<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<A-l>", "<cmd>vertical resize +1<CR>", { noremap = true, silent = true })

vim.api.nvim_set_keymap("n", "<A-C-h>", "<cmd>vertical resize -3<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<A-C-j>", "<cmd>horizontal resize -3<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<A-C-k>", "<cmd>horizontal resize +3<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<A-C-l>", "<cmd>vertical resize +3<CR>", { noremap = true, silent = true })

vim.keymap.set(
  { "n", "v" },
  -- "n",
  "<leader>sv",
  "<cmd>source $MYVIMRC<CR>",
  { noremap = true, silent = true }
)
