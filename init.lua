require("core")
require("plugins.cmp")
require("plugins.lsp")
require("plugins.treesitter")
require("plugins.fzf")
require("plugins.undotree")
require("plugins.trouble")
require("plugins.harpoon")
require("plugins.ts-autotag")
require("plugins.conform")

vim.cmd.colorscheme("gruber-darker")

local set = vim.api.nvim_set_hl

set(0, "CursorLine", { bg = "NONE" })
