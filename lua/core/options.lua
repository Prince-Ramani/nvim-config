local opt = vim.opt
vim.g.mapleader = " "


opt.number = true
opt.relativenumber = true
opt.signcolumn = "yes"
opt.termguicolors = true
opt.colorcolumn = "80"
opt.background = "dark"

opt.tabstop = 4
opt.shiftwidth = 4
opt.expandtab = true

opt.hlsearch = false
opt.incsearch = true

opt.smartindent = true
opt.autoindent = true

opt.smartcase = true
opt.ignorecase = true

opt.pumheight = 10

opt.updatetime = 200
opt.timeoutlen = 200

opt.scrolloff = 7
opt.sidescrolloff = 7

opt.swapfile = false
opt.undofile = true

opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
opt.wrap = true

opt.cursorline = true

opt.clipboard = 'unnamedplus'
