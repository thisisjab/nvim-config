-- Keep all vim/neovim configurations here

vim.opt.nu = true

vim.opt.termguicolors = true
vim.cmd("colorscheme catppuccin-mocha")

vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

-- Make background transparent
vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
