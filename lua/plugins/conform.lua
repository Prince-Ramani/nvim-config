require("conform").setup({
    format_on_save = function(bufnr)
        if vim.b[bufnr].disable_autoformat then
            return
        end
        return {
            timeout_ms = 500,
            lsp_fallback = true,
        }
    end,
    formatters = {
        clang_format = {
            prepend_args = {
                "--style={BasedOnStyle: LLVM, UseTab: Always, IndentWidth: 8, TabWidth: 8}"
            },
        },
    },
    formatters_by_ft = {
        javascript = { "prettier" },
        typescript = { "prettier" },
        javascriptreact = { "prettier" },
        typescriptreact = { "prettier" },
        json = { "prettier" },
        html = { "prettier" },
        css = { "prettier" },
        markdown = { "prettier" },
        rust = { "rustfmt" },
        c = { "clang_format" },
        cpp = { "clang_format" },
    },
})
