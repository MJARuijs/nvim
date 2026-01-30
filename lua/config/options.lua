-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here
local opt = vim.opt

opt.expandtab = true -- Use spaces instead of tabs
opt.shiftwidth = 4
opt.tabstop = 2
opt.wrap = false
opt.smartindent = true

-- search settings
opt.ignorecase = true -- ignore case when searching
opt.smartcase = true -- if you include mixed case in your search, assumes you want case-sensitive

opt.clipboard:append("unnamedplus") -- use system clipboard as default register

-- split windows
opt.splitright = true -- split vertical window to the right
opt.splitbelow = true -- split horizontal window to the bottom

-- turn off swapfile
opt.swapfile = false

opt.number = true
opt.relativenumber = true
opt.cursorline = true

opt.fillchars = {
  foldopen = "",
  foldclose = "",
  fold = " ",
  foldsep = " ",
  diff = "╱",
  eob = " ",
}
opt.foldlevel = 99
opt.foldmethod = "indent"
opt.foldtext = ""

opt.list = true -- Show some invisible charactors (tabs, spaces, etc)

opt.pumblend = 0

opt.undofile = true
opt.undolevels = 10000
opt.termguicolors = true
opt.wildmode = "longest:full,full"

-- Neovide Options
vim.g.neovide_scale_factor = 0.75
vim.g.neovide_scroll_animation_length = 0.0
