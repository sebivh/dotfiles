return {
	{
		"cohama/lexima.vim",	-- Auto close brackets  
		event = "InsertEnter",
	},
	{
		'fedepujol/move.nvim',	-- Move Lines and Text Blocks
		opts  = function ()
			require('move').setup({
				line = {
					enable = true, -- Enables line movement
					indent = true  -- Toggles indentation
				},
				block = {
					enable = true, -- Enables block movement
					indent = true  -- Toggles indentation
				},
				word = {
					enable = false, -- Enables word movement
				},
				char = {
					enable = false -- Enables char movement
				}
			})
		end,
	},
	{
		"folke/which-key.nvim",
		event = "VeryLazy",
		init = function ()
			vim.o.timeout = true
			vim.o.timeoutlen = 500
		end,
		opts = {
			presets = {
				operators = false, -- to prevetn which-key from showing info about visual mode
			},
		}
	},
}
