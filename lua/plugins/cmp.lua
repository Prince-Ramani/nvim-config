local cmp = require('cmp')

cmp.setup({
    sources = {
        { name = 'nvim_lsp' },
    },
    mapping = cmp.mapping.preset.insert({
        ['<C-p>'] = cmp.mapping.select_prev_item({ behavior = 'select' }),
        ['<C-n>'] = cmp.mapping.select_next_item({ behavior = 'select' }),

        ['<CR>'] = cmp.mapping.confirm({ select = true }),

        ['<C-Space>'] = cmp.mapping.complete(),
        ['<C-u>'] = cmp.mapping.scroll_docs(-4),
        ['<C-d>'] = cmp.mapping.scroll_docs(4),


    }),
    snippet = {
        expand = function(args)
            vim.snippet.expand(args.body)
        end,
    },
    -- experimental = {
    -- ghost_text = true,
    -- },

})
