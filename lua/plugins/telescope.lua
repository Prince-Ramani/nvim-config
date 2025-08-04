local builtin = require('telescope.builtin')
local set = vim.keymap.set
set('n', '<leader>f', builtin.find_files, { desc = 'Telescope find files' })
set("n", "<leader>a", "<cmd> Telescope find_files follow=true no_ignore=true hidden=true <CR>")
set('n', '<leader>g', builtin.live_grep, { desc = 'Telescope live grep' })
set('n', '<leader>tb', builtin.buffers, { desc = 'Telescope buffers' })
set('n', '<leader>th', builtin.help_tags, { desc = 'Telescope help tags' })
set('n', '<leader>tc', ':Telescope git_commits<CR>', { noremap = true, silent = true })
set('n', '<A-c>', function()
    require('telescope.builtin').colorscheme({ enable_preview = true })
end, { desc = 'Choose colorscheme with preview' })

set('n', '<A-n>', function()
    builtin.find_files { cwd = "~/.config/nvim/" }
end)


set('n', '<A-a>', function()
    builtin.find_files { cwd = "~/.config/alacritty/" }
end)

set('n', '<A-t>', function()
    builtin.find_files { cwd = "~/personal/.todos/" }
end)

require('telescope').setup {
    defaults = {
        file_ignore_patterns = {
            "node_modules/.*",
            "dist/.*",
            "coverage/.*",
            ".*%.git/.*",
            ".*%.min%.js",
            ".*%.log",
            "*.test.js",
        },
        previewer = require('telescope.previewers').vim_buffer_cat.new,
    },
    extensions = {
        fzf = {
            fuzzy = true,
            override_generic_sorter = true,
            override_file_sorter = true,
            case_mode = "smart_case",
        }
    }
}

require('telescope').load_extension('fzf')
