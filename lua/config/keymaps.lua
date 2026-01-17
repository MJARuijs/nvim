-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
--
-- vim.keymap.del("n", "<A-h>")
-- vim.api.nvim_set_keymap("n", "gD", "<cmd>lua vim.lsp.buf.declaration()<CR>", { noremap = true, silent = true })
-- vim.keymap.del("n", "gd")
-- vim.keymap.set("n", "gd", "<cmd>lua vim.lsp.buf.format()<CR>", { noremap = true, silent = true })
-- vim.keymap.set("n", "gd", "<cmd>lua vim.lsp.buf.definition()<CR>", { noremap = true, silent = true })
-- vim.keymap.set("n", "gd", "<cmd>lua vim.lsp.buf.definition()<CR>", { noremap = true, silent = true })

-- vim.api.nvim_set_keymap("n", "gr", "<cmd><CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<A-q>", "<cmd><leader>bd<CR>", { noremap = true, silent = true })

vim.api.nvim_set_keymap("n", "<A-h>", "<cmd>vertical resize -1<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<A-j>", "<cmd>horizontal resize -1<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<A-k>", "<cmd>horizontal resize +1<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<A-l>", "<cmd>vertical resize +1<CR>", { noremap = true, silent = true })

vim.api.nvim_set_keymap("n", "<A-C-h>", "<cmd>vertical resize -3<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<A-C-j>", "<cmd>horizontal resize -3<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<A-C-k>", "<cmd>horizontal resize +3<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<A-C-l>", "<cmd>vertical resize +3<CR>", { noremap = true, silent = true })

vim.api.nvim_set_keymap("i", "<C-h>", "<Left>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("i", "<C-j>", "<Down>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("i", "<C-k>", "<Up>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("i", "<C-l>", "<Right>", { noremap = true, silent = true })

vim.keymap.set("n", "d", '"_d', { desc = "Delete to Void" })
vim.keymap.set("n", "c", "d", { desc = "Cut" })
vim.keymap.set("n", "cc", "dd", { desc = "Cut" })

vim.keymap.set("n", "<A-e>", function()
  Snacks.explorer.open()
end, { desc = "Open Explorer" })
