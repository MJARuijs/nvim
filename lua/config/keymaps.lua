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
-- vim.api.nvim_set_keymap("n", "<A-q>", "<cmd><leader>bd<CR>", { noremap = true, silent = true })
-- vim.keymap.del("n", "<leader>ft")
vim.keymap.set("n", "<leader>ft", function()
  Snacks.terminal()
end, { desc = "Terminal (cwd)" })

vim.keymap.set("n", "<leader>fT", function()
  Snacks.terminal(nil, { cwd = LazyVim.root() })
end, { desc = "Terminal (Root Dir)" })

vim.keymap.set({ "n", "t" }, "<c-/>", function()
  Snacks.terminal()
end, { desc = "Terminal (cwd)" })

vim.keymap.set("n", "<leader>e", function()
  Snacks.explorer()
end, { desc = "Explorer (cwd)" })

vim.keymap.set("n", "<leader>E", function()
  Snacks.explorer(nil, { cwd = LazyVim.root() })
end, { desc = "Explorer (Root Dir)" })

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
vim.api.nvim_set_keymap("i", "<C-p>", "<ESC>pa", {})
vim.api.nvim_set_keymap("n", "<C-o>", "i<CR><ESC>O", {})
vim.api.nvim_set_keymap("n", "<C-o>", "i<CR><ESC>O", {})
-- vim.api.nvim_set_keymap("n", "<C-h>", "<cmd>lua Snacks.dashboard()<CR>", { desc = "Dashboard" })
-- vim.api.nvim_set_keymap("n", "<leader>e", "<C-w>v<C-w>H<cmd>Oil<CR>", {})
vim.keymap.set("n", "d", '"_d', { desc = "Delete to Void" })
vim.keymap.set("n", "x", '"_x', { desc = "Delete to Void" })
vim.keymap.set("n", "c", "d", { desc = "Cut" })
vim.keymap.set("n", "cc", "dd", { desc = "Cut" })

vim.keymap.set("n", "<A-e>", function()
  Snacks.explorer.open()
end, { desc = "Open Explorer" })

vim.api.nvim_create_autocmd("User", {
  pattern = "VeryLazy",
  callback = function()
    vim.keymap.del("n", "L")
    vim.keymap.del("n", "H")
  end,
})

local opts = { noremap = true, silent = true }
local ng = require("ng")
-- vim.keymap.set("n", "<leader>at", ng.goto_template_for_component, opts)
-- vim.keymap.set("n", "<leader>ac", ng.goto_component_with_template_file, opts)
-- vim.keymap.set("n", "<leader>aT", ng.get_template_tcb, opts)
vim.keymap.set("n", "<leader>ct", function()
  local buffer_name = vim.api.nvim_buf_get_name(0)
  if string.match(buffer_name, ".html$") then
    ng.goto_component_with_template_file({})
  else
    ng.goto_template_for_component({})
  end
end, { desc = "Toggle Component/Template" })
