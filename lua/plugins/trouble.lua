require('trouble').setup({

    action_keys = {
        close = "q",
        jump = { "l", "<cr>" },
        cancel = { "<esc>" },
        refresh = "r",
    },


    use_diagnostic_signs = true,
})

vim.keymap.set('n', '<Leader>xx', '<cmd>TroubleToggle<cr>', { desc = 'Toggle Trouble diagnostics' })
vim.keymap.set('n', '<Leader>xw', '<cmd>Trouble workspace_diagnostics<cr>', { desc = 'Workspace diagnostics' })
vim.keymap.set('n', '<Leader>xd', '<cmd>Trouble document_diagnostics<cr>', { desc = 'Document diagnostics' })
vim.keymap.set('n', '<Leader>xl', '<cmd>Trouble loclist<cr>', { desc = 'Location list diagnostics' })
vim.keymap.set('n', '<Leader>xq', '<cmd>Trouble quickfix<cr>', { desc = 'Quickfix diagnostics' })
