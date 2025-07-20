local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>f', builtin.find_files, { desc = 'Telescope find files' })
vim.keymap.set('n', '<leader>g', builtin.live_grep, { desc = 'Telescope live grep' })
vim.keymap.set('n', '<leader>tb', builtin.buffers, { desc = 'Telescope buffers' })
vim.keymap.set('n', '<leader>th', builtin.help_tags, { desc = 'Telescope help tags' })
vim.keymap.set('n', '<leader>tgc', ':Telescope git_commits<CR>', { noremap = true, silent = true })

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
        -- file_sorter = require('telescope.sorters').get_fuzzy_file,
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
