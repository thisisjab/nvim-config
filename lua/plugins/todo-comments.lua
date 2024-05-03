return {
    "folke/todo-comments.nvim",
    dependencies = { "nvim-lua/plenary.nvim" },
    opts = {},
    config = function()
        vim.api.nvim_set_keymap("n", "<leader>ft", ":TodoTelescope<CR>", { noremap = true, silent = true })
        require('todo-comments').setup({})
    end
}
