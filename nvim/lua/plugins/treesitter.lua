local treesitter = require'nvim-treesitter.configs'

treesitter.setup {
    ensure_installed = {
        'c', 'cpp', 'rust', 'cmake', 'make','python', 'lua', 'verilog', 'latex',
        'bibtex'
    },
    sync_install = false,
    auto_install = true,
    ignore_install = { '' },
	highlight = { enable = true },
    indent = { enable = { 'make', 'python' } }
}
