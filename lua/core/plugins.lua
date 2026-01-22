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
        "nvim-treesitter/nvim-treesitter",
        branch = 'master',
        lazy = false,
        build = ":TSUpdate",
    },
    { 'neovim/nvim-lspconfig', },
    { 'hrsh7th/cmp-nvim-lsp' },
    { 'hrsh7th/nvim-cmp' },
    {
        "williamboman/mason.nvim",
        build = ":MasonUpdate",
        lazy = false,
        opts = {}
    },
    {
        "williamboman/mason-lspconfig.nvim",
        opts = {},
        lazy = false,
        dependencies = {
            { "mason-org/mason.nvim", opts = {} },
            "neovim/nvim-lspconfig",
        },
    },
    { "ibhagwan/fzf-lua" },
    { "mbbill/undotree" },
    { "folke/trouble.nvim", },
    {
        "ThePrimeagen/harpoon",
        branch = "harpoon2",
        dependencies = { "nvim-lua/plenary.nvim" }
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
        "windwp/nvim-ts-autotag",
        event = "InsertEnter",
    },
    {
        'windwp/nvim-autopairs',
        event = "InsertEnter",
        config = true
    },
    { "stevearc/conform.nvim" },
})
