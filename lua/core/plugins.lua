local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
    vim.fn.system({
        "git", "clone", "--filter=blob:none", "https://github.com/folke/lazy.nvim.git", lazypath
    })
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
    {
        dir = os.getenv("HOME") .. "/.config/nvim/lua/crush.nvim",
    },
    { "ibhagwan/fzf-lua", },
    { "avuenja/shizukana.nvim" },
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
