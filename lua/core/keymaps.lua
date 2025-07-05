vim.keymap.set("n", "<A-r>", "<cmd>source %<CR>", { desc = "Execute the current file" })


vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")


vim.api.nvim_set_keymap('n', '<C-B>', '<C-B>zz', { noremap = true, silent = true })

vim.api.nvim_set_keymap('n', '<C-U>', '<C-U>zz', { noremap = true, silent = true })


vim.api.nvim_set_keymap('n', '<C-D>', '<C-D>zz', { noremap = true, silent = true })

vim.api.nvim_set_keymap('n', '<C-F>', '<C-F>zz', { noremap = true, silent = true })

vim.keymap.set('i', '<A-j>', '<Esc>j$a', { noremap = true, silent = true })

vim.keymap.set('i', '<A-k>', '<Esc>k$a', { noremap = true, silent = true })


vim.keymap.set('i', '<A-r>', '<Esc>ea', { noremap = true, silent = true })


vim.keymap.set('i', '<A-e>', '<Esc>gea', { noremap = true, silent = true })

vim.keymap.set('i', '<A-w>', '<Esc>diwi', { noremap = true, silent = true })


vim.keymap.set('i', '<A-x>', '<Esc>dawi', { noremap = true, silent = true })


vim.keymap.set('i', '<A-d>', '<Esc>dd$a', { noremap = true, silent = true })


vim.keymap.set('i', '<A-p>', '<Esc>o', { noremap = true, silent = true })


vim.keymap.set('i', '<A-o>', '<Esc>O', { noremap = true, silent = true })

vim.keymap.set('i', '<A-u>', '<C-O>u', { noremap = true, silent = true })


vim.keymap.set('i', '<A-y>', '<C-O><C-R>', { noremap = true, silent = true })


vim.keymap.set('i', '<A-0>', '<C-O>0', { noremap = true, silent = true })


vim.keymap.set('i', '<A-6>', '<C-O>^', { noremap = true, silent = true })


vim.keymap.set('i', '<A-l>', '<C-O>$', { noremap = true, silent = true })
