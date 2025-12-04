local actions = require('fzf-lua.actions')

local shared_fd_opts = table.concat({
    '--hidden',
    '--follow',
    '--exclude .git',
    '--exclude node_modules',
    '--exclude dist',
    '--exclude target',
    '--exclude coverage',
    '--exclude build',
    '--exclude .vscode',
    '--exclude .idea',
    '--exclude "*.test.js"',
    '--exclude "*.min.js"',
    '--exclude "*.log"',
    '--exclude "*.lock"',
    '--exclude "__pycache__"',
    '--exclude "*.pyc"',
    '--exclude ".DS_Store"'
}, ' ')

local shared_winopts = {
    border = 'none',
    preview = {
        scrollbar = false,
        border = 'none',
        layout = 'vertical'
    },
}

require('fzf-lua').setup {
    fzf_colors = true,
    fzf_opts = {
        ['--cycle'] = true,
        ['--layout'] = 'default',
        ['--pointer'] = ">",
        ['--no-scrollbar'] = true,
    },

    keymap = {
        builtin = {
            false,
            ['<c-d>'] = 'preview-half-page-down',
            ['<c-u>'] = 'preview-half-page-up',
            ['<c-g>'] = 'preview-bottom',
        },
        fzf = {
            false,
            ['tab']    = '',
            ['ctrl-t'] = 'toggle+up',
            ['ctrl-d'] = 'preview-half-page-down',
            ['ctrl-u'] = 'preview-half-page-up',
            ['ctrl-g'] = 'preview-bottom',
        },
    },

    actions = {
        files = {
            false,
            ['enter'] = actions.file_switch_or_edit,
            ['tab']   = actions.file_tabedit,
        },
    },

    files = {
        multiprocess = true,
        fd_opts = shared_fd_opts,
        winopts = shared_winopts,
    },

    grep = {
        multiprocess = true,
        fd_opts = shared_fd_opts,
        winopts = shared_winopts,
    },

    buffers = {
        fd_opts = shared_fd_opts,
        winopts = shared_winopts,
    },

    diagnostics = {
        winopts = shared_winopts,
    },

    lsp = {
        code_actions = {
            prompt = 'Code Actions: ',
            previewer = 'codeaction_native',
            preview_pager = (
                'delta --side-by-side --width=$FZF_PREVIEW_COLUMNS '
                .. '--hunk-header-style=omit'
            ),
            async_or_timeout = 1000,
            winopts = {
                width = 1,
                height = 1,
                border = 'single',
                preview = {
                    border = 'single',
                },
            },
        },
    },
}

vim.keymap.set("n", "<leader>f", function()
    require("fzf-lua").files { silent = true }
end)

vim.keymap.set("n", "<leader>g", function()
    require("fzf-lua").live_grep { silent = true, multiprocess = true }
end)

vim.keymap.set("n", "<leader>d", function()
    require("fzf-lua").diagnostics_document()
end, { desc = "Document Diagnostics" })

vim.keymap.set("n", "<leader>D", function()
    require("fzf-lua").diagnostics_workspace()
end, { desc = "Workspace Diagnostics" })


vim.keymap.set("n", "<A-c>", function()
    vim.cmd.FzfLua("colorschemes")
end)

vim.keymap.set('n', '<A-v>', ":lua require('fzf-lua').files({ cwd = '~/.config/nvim' })<CR>",
    { noremap = true, silent = true })

vim.keymap.set('n', '<A-a>', ":lua require('fzf-lua').files({ cwd = '~/.config/alacritty' })<CR>",
    { noremap = true, silent = true })

vim.keymap.set('n', '<A-p>', ":lua require('fzf-lua').files({ cwd = '~/personal/projects/' })<CR>",
    { noremap = true, silent = true })
