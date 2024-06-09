return { {
    'akinsho/bufferline.nvim',
    version = "*",
    dependencies = 'nvim-tree/nvim-web-devicons',
    event = 'BufReadPre',
    config = function()
        require("bufferline").setup {
            options = {
                show_buffer_icons = false,
                offsets = {
                    {
                        filetype = "neo-tree",
                        text = "Work hard!",
                        highlight = "Directory",
                        separator = true -- use a "true" to enable the default, or set your own character
                    }
                },
                always_show_bufferline = false,
            }
        }
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
