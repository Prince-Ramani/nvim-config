local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
    vim.fn.system({
        "git", "clone", "--filter=blob:none", "https://github.com/folke/lazy.nvim.git", lazypath
    })
end
vim.opt.rtp:prepend(lazypath)


require("lazy").setup({


    {
        "rose-pine/neovim",
        name = "rose-pine",
    },


    { "nvim-treesitter/nvim-treesitter", branch = 'master', lazy = false, build = ":TSUpdate" },

    {
        'nvim-telescope/telescope.nvim',
        tag = '0.1.8',
        dependencies = { 'nvim-lua/plenary.nvim' }
    },
    { "folke/tokyonight.nvim" },

    {
        "ThePrimeagen/harpoon",
        branch = "harpoon2",
        dependencies = { "nvim-lua/plenary.nvim" }
    },
    { 'neovim/nvim-lspconfig', tag = 'v1.8.0', pin = true },
    { 'hrsh7th/cmp-nvim-lsp' },
    { 'hrsh7th/nvim-cmp' },
    {
        "williamboman/mason.nvim",
        build = ":MasonUpdate",
        lazy = false,
        config = true,
    },
    {
        "williamboman/mason-lspconfig.nvim",
        lazy = false,
        dependencies = { "williamboman/mason.nvim" },
    },

    {
        'windwp/nvim-autopairs',
        event = "InsertEnter",
        config = true
    },
    {
        "christoomey/vim-tmux-navigator",
        cmd = {
            "TmuxNavigateLeft",
            "TmuxNavigateDown",
            "TmuxNavigateUp",
            "TmuxNavigateRight",
            "TmuxNavigatePrevious",
            "TmuxNavigatorProcessList",
        },
        keys = {
            { "<c-h>",  "<cmd><C-U>TmuxNavigateLeft<cr>" },
            { "<c-j>",  "<cmd><C-U>TmuxNavigateDown<cr>" },
            { "<c-k>",  "<cmd><C-U>TmuxNavigateUp<cr>" },
            { "<c-l>",  "<cmd><C-U>TmuxNavigateRight<cr>" },
            { "<c-\\>", "<cmd><C-U>TmuxNavigatePrevious<cr>" },
        },
    },

    { "rebelot/kanagawa.nvim" },
    { "catppuccin/nvim",      name = "catppuccin", priority = 1000 },
    {
        'tpope/vim-surround',
    },
    {
        'tpope/vim-commentary'
    },
    { 'tpope/vim-fugitive' },
    { 'justinmk/vim-sneak' },

    {
        "stevearc/conform.nvim",
        opts = {},
        config = function()
            require("conform").setup({
                format_on_save = {
                    lsp_fallback = true,
                    timeout_ms = 500,
                },
                formatters_by_ft = {
                    javascript = { "prettier" },
                    typescript = { "prettier" },
                    javascriptreact = { "prettier" },
                    typescriptreact = { "prettier" },
                    json = { "prettier" },
                    html = { "prettier" },
                    css = { "prettier" },
                    markdown = { "prettier" },
                },
            })
        end
    }
})
