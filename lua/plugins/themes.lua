return {
    { "catppuccin/nvim",                  name = "catppuccin",      priority = 1000 },
    { "morhetz/gruvbox",                  name = "gruvbox",         priority = 1000 },
    { "mofiqul/vscode.nvim",              name = "vscode",          priority = 1000 },
    { "oxfist/night-owl.nvim",            name = "nightowl",        priority = 1000 },
    { "folke/tokyonight.nvim",            name = "tokyonight",      priority = 1000 },
    { "rebelot/kanagawa.nvim",            name = "kangawa",         priority = 1000 },
    { "bluz71/vim-nightfly-colors",       name = "nightfly",        priority = 1000 },
    { "bluz71/vim-moonfly-colors",        name = "moonfly",         priority = 1000 },
    { "rose-pine/neovim",                 name = "rose-pine",       priority = 1000 },
    { "vimoxide/vim-cinnabar",            name = "cinnabar",        priority = 1000 },
    { "scottmckendry/cyberdream.nvim",    name = "cyberdream",      priority = 1000 },
    { "olivercederborg/poimandres.nvim",  name = "poimandres",      priority = 1000 },
    { "zootedb0t/citruszest.nvim",        name = "citruszest",      priority = 1000 },
    { "nyoom-engineering/oxocarbon.nvim", name = "oxocarbon",       priority = 1000 },
    {
        "EdenEast/nightfox.nvim",
        name = "nightfox",
        priority = 1000,

        opts = {
            options = {
                styles = {
                    comments = "italic",
                    keywords = "bold",
                    types = "italic,bold",
                }
            },
            palettes = {
                all = {
                    black = "#000000",
                    bg0 = "#000000",
                    bg1 = "#000000"
                }
            }
        },

    },
    {
        "baliestri/aura-theme",
        lazy = false,
        priority = 1000,
        config = function(plugin)
            vim.opt.rtp:append(plugin.dir .. "/packages/neovim")
        end
    },
    -- { "RRethy/base16-nvim",         name = "base16-themes", priority = 1000 },
}
