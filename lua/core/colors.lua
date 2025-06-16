
vim.cmd("colorscheme tokyonight-night") 

--vim.cmd([[highlight Normal guibg=#000000]])

vim.cmd([[highlight Normal guibg=#070707]])
-- Change the background and foreground color of the status line
vim.cmd([[highlight StatusLine guibg=#444444 guifg=#ffffff]]) 






-- Set comment color 
vim.cmd([[highlight Comment guifg=#7a7a7a gui=italic]])
vim.cmd [[
	hi SignColumn guibg=#071618
	]]



vim.api.nvim_set_hl(0, "NormalFloat", { bg = "#000000", fg = "#FFFFFF" })
vim.api.nvim_set_hl(0, "Pmenu", { bg = "#071623", fg = "#abb2bf" })
vim.api.nvim_set_hl(0, "PmenuSel", { bg = "#000080", fg = "#ffffff" })






-- LSP diagnostic highlights
vim.api.nvim_set_hl(0, "DiagnosticFloatingError", { fg = "#FF0000" })
vim.api.nvim_set_hl(0, "DiagnosticFloatingWarn", { fg = "#d300ff" })
vim.api.nvim_set_hl(0, "DiagnosticFloatingInfo", { fg = "#ff7000" })
vim.api.nvim_set_hl(0, "DiagnosticFloatingHint", { fg = "#88c907" })
