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


vim.api.nvim_set_keymap('n', '<Up>', '<Nop>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<Down>', '<Nop>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<Left>', '<Nop>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<Right>', '<Nop>', { noremap = true, silent = true })


vim.keymap.set("i", "<C-c", "<Esc>")


vim.keymap.set('n', '<leader>w', ':w<CR>', { desc = 'Save file' })
vim.keymap.set('n', '<leader>q', ':q!<CR>', { desc = 'Quit Vim' })
-- splits i dont use them though
vim.keymap.set('n', '<C-h>', '<C-w>h', { desc = 'Navigate to left split' })
vim.keymap.set('n', '<C-j>', '<C-w>j', { desc = 'Navigate to bottom split' })
vim.keymap.set('n', '<C-k>', '<C-w>k', { desc = 'Navigate to top split' })
vim.keymap.set('n', '<C-l>', '<C-w>l', { desc = 'Navigate to right split' })

vim.keymap.set("n", "<C-Up>", ":resize -2<CR>")
vim.keymap.set("n", "<C-Down>", ":resize +2<CR>")
vim.keymap.set("n", "<C-Left>", ":vertical resize -2<CR>")
vim.keymap.set("n", "<C-Right>", ":vertical resize +2<CR>")

vim.keymap.set("n", "<TAB>", ":bn<CR>")
vim.keymap.set("n", "<S-TAB>", ":bp<CR>")

vim.api.nvim_set_keymap('n', '<Leader>bl', ':buffers<CR>', { noremap = true, silent = true })


vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

vim.keymap.set("n", "H", "^")
vim.keymap.set("n", "L", "$")

-- creating file

vim.api.nvim_set_keymap('n', '<leader>n', ':e <cfile><CR>i', { noremap = true })

-- Map <Leader>r to saveas command
vim.api.nvim_set_keymap('n', '<Leader>r', ':saveas ' .. vim.fn.expand('%:p:h') .. '/', { noremap = true, silent = false })

vim.keymap.set('n', '<leader>rw', 'ciw', { desc = 'Replace word under cursor' })
vim.keymap.set('v', '<', '<gv', { noremap = true, silent = true })
vim.keymap.set('v', '>', '>gv', { noremap = true, silent = true })
vim.keymap.set("x", "<leader>p", [["_dp]])
