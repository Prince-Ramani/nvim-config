require('ayu').setup({

        overrides = {
                Comment = { italic = false },
        },
})


vim.lsp.document_color.enable(false)
local set = vim.api.nvim_set_hl

-- vim.cmd.colorscheme("ayu")
--
--
-- set(0, "MsgArea", { bg = "NONE" })
-- set(0, "@constructor.lua", { fg = "#59c2ff" })
-- set(0, "Delimiter", { fg = "#727e88" })
-- set(0, "CursorLineNR", { fg = "#C4C4C4", bg = "#11151C", bold = true })
-- set(0, "IncSearch", { bg = "#ff8f40", fg = "#ffffff" })
-- set(0, "StatusLine", { bg = "NONE" })
-- set(0, "StatusLineNC", { bg = "NONE" })
