local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, { desc = 'Telescope find files' })
vim.keymap.set('n', '<leader>fg', builtin.live_grep, { desc = 'Telescope live grep' })
vim.keymap.set('n', '<leader>fb', builtin.buffers, { desc = 'Telescope buffers' })
vim.keymap.set('n', '<leader>fh', builtin.help_tags, { desc = 'Telescope help tags' })
vim.keymap.set('n', '<leader>gc', ':Telescope git_commits<CR>', { noremap = true, silent = true })
require('telescope').setup {
    defaults = {
        file_ignore_patterns = {
            "node_modules/.*", -- Ignore node_modules directory
            "dist/.*",         -- Optionally ignore dist directories
            "coverage/.*",     -- Optionally ignore test coverage directories
            ".*%.git/.*",      -- Optionally ignore .git directories
            ".*%.min%.js",     -- Optionally ignore minified JS files
            ".*%.log",         -- Optionally ignore log files
            "*.test.js",       -- Optionally ignore test files

        },
    },
}
