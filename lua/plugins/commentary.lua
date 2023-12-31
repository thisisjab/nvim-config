return {
    "tpope/vim-commentary",
    config = function()
        -- <C-_> means ctrl + /
        vim.api.nvim_set_keymap('n', '<C-_>', ':Commentary<CR>', { noremap = true, silent = true })
        vim.api.nvim_set_keymap('x', '<C-_>', ':Commentary<CR>', { noremap = true, silent = true })
        vim.api.nvim_set_keymap('i', '<C-_>', '<Esc>:Commentary<CR>a', { noremap = true, silent = true })
    end
}
