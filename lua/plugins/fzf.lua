local actions = require('fzf-lua.actions')

local shared_fd_opts = table.concat({
    '--hidden',
    '--exclude .git',
    '--exclude node_modules',
    '--exclude dist',
    '--exclude target',
    '--exclude coverage',
    '--exclude "*.test.js"',
    '--exclude "*.min.js"',
    '--exclude "*.log"'
}, ' ')

local shared_winopts = {
    border = 'single',
    preview = {
        scrollbar = false,
        border = 'single',
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
        fd_opts = shared_fd_opts,
        winopts = shared_winopts,
    },

    grep = {
        fd_opts = shared_fd_opts,
        winopts = shared_winopts,
    },

    buffers = {
        fd_opts = shared_fd_opts,
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

-- Key mappings
vim.keymap.set("n", "<leader>f", function()
    require("fzf-lua").files { silent = true }
end)

vim.keymap.set("n", "<leader>g", function()
    require("fzf-lua").live_grep { silent = true, multiprocess = true }
end)

vim.keymap.set("n", "<A-c>", function()
    vim.cmd.FzfLua("colorschemes")
end)
