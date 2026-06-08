require('ayu').setup({

        overrides = {
                Comment = { italic = false },
                MsgArea = { bg = "NONE" },
                Delimiter = { fg = "#727e88" },
                CursorLineNR = { fg = "#C4C4C4", bg = "#11151C", bold = true },
                IncSearch = { bg = "#ff8f40", fg = "#ffffff" },
                StatusLine = { bg = "NONE" },
                StatusLineNC = { bg = "NONE" },
        },
})

local set = vim.api.nvim_set_hl
set(0, "@constructor.lua", { fg = "#59c2ff" })
