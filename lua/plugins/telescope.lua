return {
    -- TODO: setup mappings
    'nvim-telescope/telescope.nvim', tag = '0.1.5',
      dependencies = { 'nvim-lua/plenary.nvim' },
        config = function()
            -- Mappings
            local builtin = require('telescope.builtin')
                vim.keymap.set('n', '<leader>pf', builtin.find_files, {})
                vim.keymap.set('n', '<leader>pg', builtin.live_grep, {})
                vim.keymap.set('n', '<leader>ps', builtin.treesitter, {})
                vim.keymap.set('n', '<leader>pd', builtin.diagnostics, {})
                vim.keymap.set('n', '<leader>pb', builtin.git_branches, {})
        end
    }
