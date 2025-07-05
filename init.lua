require("core")
require("plugins.cmp")
require("plugins.lsp")
require("plugins.treesitter")
require("plugins.colors")
require("plugins.autopairs")
require("plugins.harpoon")
require("plugins.telescope")


vim.api.nvim_set_keymap("n", "<leader>-", ":Ex<CR>", { noremap = true, silent = true })

vim.cmd [[

hi StatusLine guifg=#abb2bf guibg=#272727 guisp=#ff5f00
  hi StatusLineNC guifg=#abb2bf guibg=#272727 guisp=#ff0000
]]



vim.api.nvim_set_hl(0, "Pmenu", { fg = "#D4D8E1", bg = "#1F232A" })                       -- Popup menu background
vim.api.nvim_set_hl(0, "PmenuSel", { fg = "#1F232A", bg = "#F8C04C" })                    -- Selected item in completion popup
vim.api.nvim_set_hl(0, "LspSignatureActiveParameter", { fg = "#F8C04C", bg = "#2E2F3D" }) -- Active signature param
