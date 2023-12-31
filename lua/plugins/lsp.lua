return {
    {
        "williamboman/mason.nvim",
        config = function()
            require("mason").setup()
        end
    },

    {
        "williamboman/mason-lspconfig.nvim",
        config = function()
            require("mason-lspconfig").setup {
                ensure_installed = { "lua_ls", "pyright" },
            }
        end
    },

    {
        "neovim/nvim-lspconfig",
        config = function()
            -- Setting up each individual lsp
            require("lspconfig").pyright.setup {
                settings = {
                    python = {
                        analysis = {
                            autoSearchPaths = true,
                            diagnosticMode = "openFilesOnly",
                            typeCheckingMode = "off",
                            useLibraryCodeForTypes = true
                        }
                    }
                }
            }

        require("lspconfig").lua_ls.setup {}
        end
    },




}
