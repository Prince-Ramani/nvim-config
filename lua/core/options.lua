opt = vim.opt
opt.number = true
opt.relativenumber = true
opt.tabstop = 4
opt.shiftwidth = 4
opt.expandtab = true
opt.smartindent = true
opt.autoindent = true
opt.colorcolumn = "76"
opt.hlsearch = false
opt.incsearch = true
opt.termguicolors = true
opt.smartcase = true
opt.ignorecase = true
opt.signcolumn = "yes"
opt.pumheight = 10
opt.clipboard = 'unnamedplus'
opt.updatetime = 250
opt.timeoutlen = 300
opt.scrolloff = 8
opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
opt.wrap = true
vim.g.mapleader = " "


vim.api.nvim_create_autocmd("BufEnter", {
    pattern = { "daily.md", "weekly.md", "monthly.md", "yearly.md" },
    callback = function()
        vim.b.disable_autoformat = true
    end,
})

vim.api.nvim_create_autocmd("BufEnter", {
    pattern = "*.md",
    callback = function()
        local filename = vim.fn.expand("%:t")
        local disable_list = {
            ["daily.md"] = true,
            ["weekly.md"] = true,
            ["monthly.md"] = true,
            ["yearly.md"] = true,
        }
        if not disable_list[filename] then
            vim.b.disable_autoformat = false
        end
    end,
})
