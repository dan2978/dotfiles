local treeapi = require'nvim-tree.api'.tree
local telescope_builtin = require'telescope.builtin'

local function split()
    vim.cmd[[split]]
end

local function vsplit()
    vim.cmd[[vsplit]]
end

vim.keymap.set('n', '<space>tt', treeapi.toggle, {})
vim.keymap.set('n', '<space>sv', vsplit, {})
vim.keymap.set('n', '<space>sh', split, {})

vim.keymap.set('n', '<leader>ff', telescope_builtin.find_files)
vim.keymap.set('n', '<leader>fg', telescope_builtin.live_grep)
vim.keymap.set('n', '<leader>fb', telescope_builtin.buffers)
vim.keymap.set('n', '<leader>fh', telescope_builtin.help_tags)

vim.api.nvim_create_autocmd('LspAttach', {
    callback = function ()
        vim.keymap.set('n', 'K', vim.lsp.buf.hover, {})
        vim.keymap.set('n', 'gD', vim.lsp.buf.declaration, {})
        vim.keymap.set('n', 'gd', vim.lsp.buf.definition, {})
        vim.keymap.set('n', 'gr', vim.lsp.buf.references, {})
        vim.keymap.set('n', 'gs', vim.lsp.buf.signature_help, {})
        vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, {})
        vim.keymap.set('n', 'gt', vim.lsp.buf.type_definition, {})
        vim.keymap.set('n', '<F2>', vim.lsp.buf.rename, {})
    end
})
