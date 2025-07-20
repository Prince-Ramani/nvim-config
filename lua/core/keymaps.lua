vim.keymap.set("n", "<A-r>", "<cmd>source %<CR>", { desc = "Execute the current file" })


vim.keymap.set('n', 'm', function()
    vim.cmd("put! =''")
end, { noremap = true, silent = true })


vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")


vim.api.nvim_set_keymap('n', '<C-B>', '<C-B>zz', { noremap = true, silent = true })

vim.api.nvim_set_keymap('n', '<C-U>', '<C-U>zz', { noremap = true, silent = true })

vim.api.nvim_set_keymap('n', '<C-D>', '<C-D>zz', { noremap = true, silent = true })

vim.api.nvim_set_keymap('n', '<C-F>', '<C-F>zz', { noremap = true, silent = true })



-- Disable arrow keys
vim.api.nvim_set_keymap('n', '<Up>', '<Nop>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<Down>', '<Nop>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<Left>', '<Nop>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<Right>', '<Nop>', { noremap = true, silent = true })
