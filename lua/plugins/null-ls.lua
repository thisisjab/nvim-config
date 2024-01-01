return {
    "nvimtools/none-ls.nvim",
    dependencies = {
        "nvim-lua/plenary.nvim",
    },
    config = function()
        -- Mappings
        vim.keymap.set('n', '<leader>gf', vim.lsp.buf.format, {})

        local null_ls = require("null-ls")

        null_ls.setup({
            sources = {
                -- Lua
                null_ls.builtins.formatting.stylua,

                -- Python
                null_ls.builtins.diagnostics.ruff,
                null_ls.builtins.formatting.black,
                null_ls.builtins.formatting.isort,

                -- Spell
                null_ls.builtins.completion.spell,
            },
        })
    end
}
