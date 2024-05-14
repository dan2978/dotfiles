local mason = require'mason'
local mason_lspconfig = require'mason-lspconfig'
local lspconfig = require'lspconfig'

local servers = {
    'clangd',           -- C/C++
    'rust_analyzer',    -- Rust
    'cmake',            -- CMake
    'autotools_ls',     -- Make, Automake
    'pyright',          -- Python
    'lua_ls',           -- LUA
    'verible',          -- Verilog/SystemVerilog
    'texlab',           -- TeX/LaTeX/BibTeX
}

mason.setup()
mason_lspconfig.setup({
    ensure_installed = servers,
    autoinstall = true
})

lspconfig.clangd.setup{}
lspconfig.rust_analyzer.setup{}
lspconfig.cmake.setup{}
lspconfig.autotools_ls.setup{}
lspconfig.pyright.setup{}
lspconfig.lua_ls.setup{}
lspconfig.verible.setup{
    single_file_support = true,
    settings = {'--rules=-module-parameter,+line-length:80'}
}
lspconfig.texlab.setup{}
