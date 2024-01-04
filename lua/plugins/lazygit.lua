return {
    "kdheepak/lazygit.nvim",
    dependencies = {
        "nvim-lua/plenary.nvim",
    },
    config = function()
        -- Mappings
        vim.api.nvim_set_keymap("n", "<leader>lg", ":LazyGit<CR>", { noremap = true, silent = true })
    end,
}
