local set = vim.keymap.set

set('n', '<Up>', '<Nop>', { noremap = true, silent = true })
set('n', '<Down>', '<Nop>', { noremap = true, silent = true })
set('n', '<Left>', '<Nop>', { noremap = true, silent = true })
set('n', '<Right>', '<Nop>', { noremap = true, silent = true })

set("i", "<C-c", "<Esc>")

set("n", "<A-r>", "<cmd>source %<CR>", { desc = "Execute the current file" })

set("n", "j", "v:count == 0 ? 'gj' : 'j'", { expr = true, silent = true })
set("n", "k", "v:count == 0 ? 'gk' : 'k'", { expr = true, silent = true })

set('n', '<C-B>', '<C-B>zz', { noremap = true, silent = true })
set('n', '<C-U>', '<C-U>zz', { noremap = true, silent = true })
set('n', '<C-D>', '<C-D>zz', { noremap = true, silent = true })
set('n', '<C-F>', '<C-F>zz', { noremap = true, silent = true })

set('n', '<leader>w', ':w<CR>', { desc = 'Save file' })
set('n', '<leader>q', ':q!<CR>', { desc = 'Quit Vim' })

set('n', '<C-h>', '<C-w>h', { desc = 'Navigate to left split' })
set('n', '<C-j>', '<C-w>j', { desc = 'Navigate to bottom split' })
set('n', '<C-k>', '<C-w>k', { desc = 'Navigate to top split' })
set('n', '<C-l>', '<C-w>l', { desc = 'Navigate to right split' })

set("n", "<C-Up>", ":resize -2<CR>")
set("n", "<C-Down>", ":resize +2<CR>")
set("n", "<C-Left>", ":vertical resize -2<CR>")
set("n", "<C-Right>", ":vertical resize +2<CR>")

set("n", "<TAB>", ":bn<CR>")
set("n", "<S-TAB>", ":bp<CR>")
set('n', '<Leader>bl', ':buffers<CR>', { noremap = true, silent = true })

set("n", "n", "nzzzv")
set("n", "N", "Nzzzv")

set('v', '<', '<gv', { noremap = true, silent = true })
set('v', '>', '>gv', { noremap = true, silent = true })
set("x", "<leader>p", [["_dp]])

set('n', '<leader>d', '"_dd', { desc = 'Delete line without yanking' })

set("n", "<leader>/", ":nohlsearch<CR>", { desc = "Clear search highlight" })

set('n', '<leader>r', 'ciw', { desc = 'Replace current word' })

set("v", "J", ":m '>+1<CR>gv=gv")
set("v", "K", ":m '<-2<CR>gv=gv")


set('n', 'm', function()
    vim.cmd("put! =''")
end, { noremap = true, silent = true })

function ToggleNetrw()
    local is_netrw = vim.bo.filetype == "netrw" or vim.fn.bufname("%"):match("NetrwTreeListing") ~= nil
    if is_netrw then
        vim.cmd("bd")
    else
        vim.cmd("Explore")
    end
end

set("n", "<leader>o", ":lua ToggleNetrw()<CR>", { noremap = true, silent = true })
