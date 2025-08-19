return {

	{
		"williamboman/mason.nvim",
		config = function()
			require("mason").setup()
		end,
	},
	{
		"williamboman/mason-lspconfig.nvim",
		event = "BufReadPost",
		config = function()
			require("mason-lspconfig").setup({
				ensure_installed = {
					"lua_ls",
					"ts_ls",
				}
			})

		end,
	},
	{
		"neovim/nvim-lspconfig",
		event = { "BufReadPre", "BufNewFile" },
		dependencies = {
			"hrsh7th/cmp-nvim-lsp",
			{ "antosha417/nvim-lsp-file-operations", config = true, },
		},
		opts = { diagnostics = { virtual_text = false } },
		config = function()
			local lspconfig = require("lspconfig")
			local cmp_nvim_lsp = require("cmp_nvim_lsp")

			local keymap = vim.keymap
			local opts = { noremap = true, silent = true }

			local on_attach = function(_client, bufnr)
				opts.buffer = bufnr

				opts.desc = "LSP Referencen"
				keymap.set("n", "gR", "<cmd>Telescope lsp_references<CR>", opts)

				opts.desc = "LSP Declaration"
				keymap.set("n", "gD", vim.lsp.buf.declaration, opts)

				opts.desc = "LSP Defenition"
				keymap.set("n", "gd", "<cmd>Telescope lsp_definitions<CR>", opts)

				opts.desc = "LSP Implementationen"
				keymap.set("n", "gi", "<cmd>Telescope lsp_implementations<CR>", opts)

				opts.desc = "LSP Deffenizionen"
				keymap.set("n", "gt", "<cmd>Telescope lsp_type_definitions<CR>", opts)

				opts.desc = "LSP Buffer Hoffer"
				keymap.set("n", "K", vim.lsp.buf.hover, opts)
			end

			local capabilities = cmp_nvim_lsp.default_capabilities()

			lspconfig["lua_ls"].setup({
				capabilities = capabilities,
				on_attach = on_attach,
				settings = {
					Lua = {
						diagnostics = {
							-- Get the language server to recognize the `vim` global
							globals = { "vim" },
						},
						workspace = {
							-- Make the server aware of Neovim runtime files and plugins
							library = { vim.env.VIMRUNTIME },
							checkThirdParty = false,
						},
					},
				},
			})

			lspconfig["ltex"].setup({
				capabilities = capabilities,
				on_attach = on_attach,
				settings = {
					latex = {
						language = "de-DE",
						enablePickyRules = true,
						completionEnabled = true,
					}
				}
			})

			lspconfig["jsonls"].setup({
				capabilities = capabilities,
				on_attach = on_attach,
				settings = {
					--
				}
			})

			lspconfig["ts_ls"].setup({
				capabilities = capabilities,
				on_attach = on_attach,
				settings = {
					javascript = {
						format = {
							semicolons = "insert",
						},
						suggest = {
							completeFunctionCalls = true,
						}
					}
				}
			})

			lspconfig["tailwindcss"].setup({
				capabilities = capabilities,
				on_attach = on_attach,
				settings = {
					tailwindCSS = {
						emmetCompletions = true,
					}
				}
			})

			lspconfig["cssls"].setup({
				capabilities = capabilities,
				on_attach = on_attach,
				settings = {
					css = {

					}
				}
			})

			lspconfig["pyright"].setup({
				capabilities = capabilities,
				on_attach = on_attach,
				settings = {
					}
				}
			)
			lspconfig["bashls"].setup({
				capabilities = capabilities,
				on_attach = on_attach,
				settings = {
					}
				}
			)
			lspconfig["clangd"].setup({
				capabilities = capabilities,
				on_attach = on_attach,
				settings = {
					}
				}
			)
			lspconfig["ansiblels"].setup({
				
			})

		end,
	},

}
