local mason = require'mason'
local mason_lspconfig = require'mason-lspconfig'
local lspconfig = require'lspconfig'

local servers = {
    'clangd',           -- C, C++
    'rust_analyzer',    -- Rust
    'cmake',            -- CMake
    'autotools_ls',     -- Make, Automake, Autoconf
    'pyright',          -- Python
    'lua_ls',           -- LUA
    'verible',          -- Verilog, SystemVerilog
    'texlab',           -- TeX, LaTeX, BibTeX
}

mason.setup()
mason_lspconfig.setup({
    ensure_installed = servers,
    autoinstall = true
})

for _, server in pairs(servers) do
    lspconfig[server].setup{}
end
