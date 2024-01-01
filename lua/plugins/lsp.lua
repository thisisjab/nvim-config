return {
	{
		"williamboman/mason.nvim",
		config = function()
			require("mason").setup()
		end,
	},

	{
		"williamboman/mason-lspconfig.nvim",
		config = function()
			require("mason-lspconfig").setup({
				ensure_installed = { "lua_ls", "pyright" },
			})
		end,
	},

	{
		"neovim/nvim-lspconfig",
		config = function()
			-- It's used to make nvim-cmp able to load snippets from LSP
			local capabilities = require("cmp_nvim_lsp").default_capabilities()

			-- Setting up each individual lsp
			require("lspconfig").pyright.setup({
				capabilities = capabilities,
				settings = {
					python = {
						analysis = {
							autoSearchPaths = true,
							diagnosticMode = "openFilesOnly",
							typeCheckingMode = "off",
							useLibraryCodeForTypes = true,
						},
					},
				},
			})

			require("lspconfig").lua_ls.setup({
				capabilities = capabilities,
			})

			-- Mappings
			vim.api.nvim_create_autocmd("LspAttach", {
				group = vim.api.nvim_create_augroup("UserLspConfig", {}),
				callback = function(ev)
					-- Enable completion triggered by <c-x><c-o>
					vim.bo[ev.buf].omnifunc = "v:lua.vim.lsp.omnifunc"

					-- Buffer local mappings.
					-- See `:help vim.lsp.*` for documentation on any of the below functions
					local opts = {
						buffer = ev.buf,
					}
					vim.keymap.set({ "n", "i" }, "<C-D>", vim.lsp.buf.declaration, opts)
					vim.keymap.set({ "n", "i" }, "<C-d>", vim.lsp.buf.definition, opts)
					vim.keymap.set({ "n", "i" }, "<C-h>", vim.lsp.buf.hover, opts)
					-- vim.keymap.set({ 'n', 'i' }, '<C-i>', vim.lsp.buf.implementation, opts)
					vim.keymap.set({ "n", "i" }, "<C-k>", vim.lsp.buf.signature_help, opts)
					-- vim.keymap.set('n', '<space>wa', vim.lsp.buf.add_workspace_folder, opts)
					-- vim.keymap.set('n', '<space>wr', vim.lsp.buf.remove_workspace_folder, opts)
					-- vim.keymap.set('n', '<space>wl', function()
					-- print(vim.inspect(vim.lsp.buf.list_workspace_folders()))
					-- end, opts)
					-- vim.keymap.set('n', '<space>D', vim.lsp.buf.type_definition, opts)
					vim.keymap.set({ "n", "i" }, "<F2>", vim.lsp.buf.rename, opts)
					vim.keymap.set({ "n" }, "<space>ca", vim.lsp.buf.code_action, opts)
					vim.keymap.set({ "n", "i" }, "<C-r>", vim.lsp.buf.references, opts)

					-- Disabled formattting with lsp since it not always working properly
					-- I use neoformat
					--
					-- vim.keymap.set({ 'n', 'i' }, '<C-p>', function()
					--     vim.lsp.buf.format {
					--         async = false
					--     }
					-- end, opts)
				end,
			})
		end,
	},
}
