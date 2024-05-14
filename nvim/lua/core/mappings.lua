local treeapi = require'nvim-tree.api'.tree

local function split()
    vim.cmd[[split]]
end

local function vsplit()
    vim.cmd[[vsplit]]
end

vim.keymap.set('n', '<space>t', treeapi.toggle, {})
vim.keymap.set('n', '<space>v', vsplit, {})
vim.keymap.set('n', '<space>h', split, {})
