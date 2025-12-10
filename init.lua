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

vim.api.nvim_create_autocmd("LspAttach", {
    callback = function(args)
        local client = vim.lsp.get_client_by_id(args.data.client_id)
        if client and client.server_capabilities.semanticTokensProvider then
            client.server_capabilities.semanticTokensProvider = nil
        end
    end,
})

require("foxus").setup()
