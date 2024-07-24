local treesitter = require'nvim-treesitter.configs'

treesitter.setup {
    ensure_installed = {
        'c', 'cpp', 'asm', 'rust', 'cmake', 'make', 'python', 'lua', 'verilog',
        'bibtex'
    },
    sync_install = false,
    auto_install = true,
	highlight = { enable = true },
    indent = { enable = { 'rust', 'make', 'python', 'lua' } }
}
