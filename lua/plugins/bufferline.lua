return { {
    'akinsho/bufferline.nvim',
    version = "*",
    dependencies = 'nvim-tree/nvim-web-devicons',
    event = 'BufReadPre',
    config = function()
        require("bufferline").setup {
            options = {
                indicator = {
                    style = 'underline',
                },
            } }
        vim.api.nvim_set_keymap('n', '<M-n>', ':BufferLineCycleNext<CR>', {
            noremap = true,
            silent = true
        })
        vim.api.nvim_set_keymap('i', '<M-n>', '<Esc>:BufferLineCycleNext<CR>', {
            noremap = true,
            silent = true
        })
        vim.api.nvim_set_keymap('n', '<M-p>', ':BufferLineCyclePrev<CR>', {
            noremap = true,
            silent = true
        })
        vim.api.nvim_set_keymap('i', '<M-p>', '<Esc>:BufferLineCyclePrev<CR>', {
            noremap = true,
            silent = true
        })
        vim.api.nvim_set_keymap('n', '<M-c>', ':bd<CR>', {
            noremap = true,
            silent = true
        })
    end
} }
