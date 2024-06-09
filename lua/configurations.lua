-- Keep all vim/neovim configurations here

-- To have system clipboard support
vim.opt.clipboard = "unnamedplus"

-- Spell check
vim.opt.spelllang = 'en_us'
vim.opt.spell = true

vim.opt.nu = true

-- Fix base16 themes removing borders from telescope
-- require('base16-colorscheme').with_config {
    -- telescope = false,
-- }

vim.opt.termguicolors = true
vim.opt.background = "dark"
vim.cmd("colorscheme oxocarbon")
-- vim.api.nvim_set_hl(0, "Normal", { bg = "#000000" })
-- vim.api.nvim_set_hl(0, "NormalFloat", { bg = "#000000" })
-- vim.api.nvim_set_hl(0, "Visual", { bg = "#000000" })
-- vim.api.nvim_set_hl(0, "LineNr", { bg = "#000000" })
-- vim.api.nvim_set_hl(0, "SignColumn", { bg = "#000000" })


vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

-- Make background transparent
-- vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
-- vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
