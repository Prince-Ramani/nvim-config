require('mason-lspconfig').setup({
    ensure_installed = { "pyright", "html", "cssls", "jsonls", "eslint", "tailwindcss", "ts_ls", "clangd", "rust_analyzer", "bashls", "yamlls", "dockerls" },
    handlers = {
        function(server_name)
            require('lspconfig')[server_name].setup({})
        end,
    },
    ui = {
        border = "rounded",
    },
})

-- version mismatch
vim.lsp.config['lua_ls'] = {
    cmd = { 'lua-language-server' },
    filetypes = { 'lua' },
    root_markers = { { '.luarc.json', '.luarc.jsonc' }, '.git' },
    settings = {
        Lua = {
            runtime = {
                version = 'LuaJIT',
            }
        }
    }
}

vim.lsp.enable('lua_ls')

vim.diagnostic.config({
    virtual_text = {
        severity = { min = vim.diagnostic.severity.ERROR },
        prefix = "●",
    },
    underline = {
        severity = { min = vim.diagnostic.severity.WARN },
    },
    signs = true,
    update_in_insert = false,
    float = {
        border = "rounded",
        source = "always",
    },
})

local lspconfig_defaults = require('lspconfig').util.default_config
lspconfig_defaults.capabilities = vim.tbl_deep_extend(
    'force',
    lspconfig_defaults.capabilities,
    require('cmp_nvim_lsp').default_capabilities()
)

require('lspconfig.configs').my_custom_lsp = {
    default_config = {
        cmd = { '/usr/bin/lua-language-server' },
        filetypes = { 'lua' },
        root_dir = function(fname)
            return lsp.util.find_git_ancestor(fname)
        end,
        settings = {},
    },
}

vim.api.nvim_create_autocmd('LspAttach', {
    desc = 'LSP actions',
    callback = function(event)
        local opts = { buffer = event.buf }
        vim.keymap.set('n', 'K', '<cmd>lua vim.lsp.buf.hover()<cr>', opts)
        vim.keymap.set('n', 'gd', '<cmd>lua vim.lsp.buf.definition()<cr>', opts)
        vim.keymap.set('n', 'gD', '<cmd>lua vim.lsp.buf.declaration()<cr>', opts)
        vim.keymap.set('n', 'gi', '<cmd>lua vim.lsp.buf.implementation()<cr>', opts)
        vim.keymap.set('n', 'go', '<cmd>lua vim.lsp.buf.type_definition()<cr>', opts)
        vim.keymap.set('n', 'gr', '<cmd>lua vim.lsp.buf.references()<cr>', opts)
        vim.keymap.set('n', 'gs', '<cmd>lua vim.lsp.buf.signature_help()<cr>', opts)
        vim.keymap.set('n', '<F2>', '<cmd>lua vim.lsp.buf.rename()<cr>', opts)
        vim.keymap.set({ 'n', 'x' }, '<F3>', '<cmd>lua vim.lsp.buf.format({async = true})<cr>', opts)
        vim.keymap.set('n', '<F4>', '<cmd>lua vim.lsp.buf.code_action()<cr>', opts)
        vim.keymap.set('n', '[d', '<cmd>lua vim.diagnostic.goto_prev()<cr>', opts)
        vim.keymap.set('n', ']d', '<cmd>lua vim.diagnostic.goto_next()<cr>', opts)
        vim.keymap.set('n', '<Leader>l', function()
            vim.diagnostic.set_loclist()
            vim.cmd('lopen')
        end, { silent = true })
    end,
})
