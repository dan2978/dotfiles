local treesitter = require'nvim-treesitter.configs'

treesitter.setup {
    ensure_installed = {
        'c', 'cpp', 'rust', 'cmake', 'make', 'python', 'lua', 'verilog',
        'bibtex'
    },
    sync_install = false,
    auto_install = true,
    disable = { 'latex' },
	highlight = { enable = true },
    indent = { enable = { 'rust', 'make', 'python', 'lua' } }
}
