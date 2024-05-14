local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"

-- Installing Lazy
if not vim.loop.fs_stat(lazypath) then
    vim.fn.system({
        "git",
        "clone",
        "--filter=blob:none",
        "https://github.com/folke/lazy.nvim.git",
        "--branch=stable",
        lazypath,
    })
end
vim.opt.rtp:prepend(lazypath)
local lazy = require'lazy'

-- List of plugins
lazy.setup({
    -- Tree
    {
        'nvim-tree/nvim-tree.lua',
        'nvim-tree/nvim-web-devicons',
    },

    --{'nvim-telescope/telescope.nvim'}, -- File search

    {'nvim-treesitter/nvim-treesitter'}, -- Syntax highlighting

    -- LSP and LS installation
    {
        'williamboman/mason.nvim',
        'williamboman/mason-lspconfig.nvim',
        'neovim/nvim-lspconfig',
    },

    -- Autocompletion

    {'L3MON4D3/LuaSnip'},
    {'hrsh7th/cmp-nvim-lsp'},
    {'hrsh7th/cmp-path'},
    {'hrsh7th/cmp-cmdline'},
    {'hrsh7th/nvim-cmp'},
})

-- Configurations for plugins

require('plugins.tree')
require('plugins.treesitter')
require('plugins.cmp')
require('plugins.lsp')
