return {
	'nvim-tree/nvim-tree.lua',
	lazy = false,
	dependencies = {
		'nvim-tree/nvim-web-devicons',
	},
	config = function()
		vim.g.loaded_netrw = 1
		vim.g.loaded_netrwPlugin = 1
		local nvim_tree = require("nvim-tree")
		nvim_tree.setup({
			hijack_cursor = true,
			sync_root_with_cwd = true,
			renderer = {
				full_name = true,
				group_empty = true,
				add_trailing = true,
				indent_markers = {
					enable = true,
				},
				icons = {
					git_placement = "signcolumn",
					show = {
						file = true,
						folder = true,
						folder_arrow = true,
						git = true,
					},
					web_devicons = {
						folder = {
							enable = true
						},
					},
				},
			},
			view = {
				centralize_selection = true,
			},
			modified = {
				enable = true,
			},
		})
	end,
}
