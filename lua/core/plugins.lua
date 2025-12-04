local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
    local lazyrepo = "https://github.com/folke/lazy.nvim.git"
    local out = vim.fn.system({ "git", "clone", "--filter=blob:none", "--branch=stable", lazyrepo, lazypath })
    if vim.v.shell_error ~= 0 then
        vim.api.nvim_echo({
            { "Failed to clone lazy.nvim:\n", "ErrorMsg" },
            { out,                            "WarningMsg" },
            { "\nPress any key to exit..." },
        }, true, {})
        vim.fn.getchar()
        os.exit(1)
    end
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
    {
        "blazkowolf/gruber-darker.nvim",
        opts = {
            bold = false,
            italic = {
                strings = false,
                comments = true,
                operators = false,
                folds = true,
            },
        }
    },
    { "NTBBloodbath/sweetie.nvim" },

    { "ibhagwan/fzf-lua" },
    { "mbbill/undotree" },
    {
        "folke/trouble.nvim",
        config = true
    },
    {
        "windwp/nvim-ts-autotag",
        event = "InsertEnter",
        config = true
    },
    {
        "nvim-treesitter/nvim-treesitter",
        branch = 'master',
        lazy = false,
        build = ":TSUpdate"
    },
    {
        "ThePrimeagen/harpoon",
        branch = "harpoon2",
        dependencies = { "nvim-lua/plenary.nvim" }
    },
    {
        'neovim/nvim-lspconfig',
        tag = 'v1.8.0',
        pin = true
    },
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
        'justinmk/vim-sneak',
        init = function()
            vim.g["sneak#label"] = 1
            vim.g["sneak#use_ic_scs"] = 1
            vim.g["sneak#s_next"] = 1
        end

    },
    {
        "stevearc/conform.nvim",
        opts = {},
        config = function()
            require("conform").setup({
                format_on_save = function(bufnr)
                    if vim.b[bufnr].disable_autoformat then
                        return
                    end
                    return {
                        timeout_ms = 500,
                        lsp_fallback = true,
                    }
                end,
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
