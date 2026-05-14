require("core")
require("plugins.cmp")
require("plugins.lsp")
require("plugins.undotree")
require("plugins.trouble")
require("plugins.harpoon")
require("plugins.ts-autotag")
require("plugins.conform")
require("plugins.fzf")

vim.api.nvim_create_autocmd("LspAttach", {
        callback = function(args)
                local client = vim.lsp.get_client_by_id(args.data.client_id)
                if client then
                        client.server_capabilities.semanticTokensProvider = nil
                end
        end,
})

vim.lsp.document_color.enable(false)

vim.cmd.colorscheme("lunaperche")

vim.api.nvim_set_hl(0, "Comment", { fg = "#767676" })
vim.api.nvim_set_hl(0, "StatusLine", { bg = "#444444" })
vim.api.nvim_set_hl(0, "StatusLineNc", { bg = "#444444" })
