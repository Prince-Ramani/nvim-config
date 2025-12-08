require('trouble').setup({
    action_keys = {
        close = "q",
        jump = { "l", "<cr>" },
        cancel = { "<esc>" },
        refresh = "r",
    },
    use_diagnostic_signs = true,
})


vim.keymap.set('n', '<Leader>xx',
    '<cmd>Trouble diagnostics toggle<cr>',
    { desc = 'Toggle Trouble diagnostics' }
)

vim.keymap.set('n', '<Leader>xw',
    '<cmd>Trouble diagnostics toggle filter.buf=0<cr>',
    { desc = 'Buffer Diagnostics' }
)

vim.keymap.set('n', '<Leader>xs',
    '<cmd>Trouble symbols toggle focus=false<cr>',
    { desc = 'Document symbols' }
)

-- LSP: definitions / references / implementations etc.
vim.keymap.set('n', '<Leader>xl',
    '<cmd>Trouble lsp toggle<cr>',
    { desc = 'LSP locations (defs/refs)' }
)

-- Quickfix list
vim.keymap.set('n', '<Leader>xq',
    '<cmd>Trouble qflist toggle<cr>',
    { desc = 'Quickfix list' }
)

-- Location list
vim.keymap.set('n', '<Leader>xd',
    '<cmd>Trouble loclist toggle<cr>',
    { desc = 'Location List' }
)
