local opt = vim.opt
local cmd = vim.cmd

-- Main options

opt.cursorline = true
opt.spelllang = {'en_us', 'ru'}
opt.number = true
opt.relativenumber = true
opt.undofile = true

-- Tab options

opt.shiftwidth = 4
opt.tabstop = 4
opt.expandtab = true
opt.smartindent = true
opt.smarttab = true

-- Vertical lines

opt.colorcolumn = "80,100"

-- Clipboard

opt.clipboard = 'unnamedplus'

-- Files

opt.backup = false
opt.swapfile = false

-- Theme
cmd[[colorscheme habamax]] -- Цветовая тема
