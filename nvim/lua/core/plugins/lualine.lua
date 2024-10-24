return {
	"nvim-lualine/lualine.nvim",
	config = function ()
		--[[local colors = {
			blue   = '#80a0ff',
			cyan   = '#79dac8',
			black  = '#080808',
			white  = '#c6c6c6',
			red    = '#ff5189',
			violet = '#d183e8',
			grey   = '#303030',
		}
		--]]
		
		local colors = {
			blue = '#458588',
			cyan = '#7fa2ac',
			black = '#504945',
			white = '#ebdbb2',
			red = '#dedede',
			violet = '#b16286',
			grey = '#504945',
		}

		local bubbles_theme = {
			normal = {
				a = { fg = colors.black, bg = colors.violet },
				b = { fg = colors.white, bg = colors.grey },
				c = { fg = colors.white },
			},

			insert = { a = { fg = colors.black, bg = colors.blue } },
			visual = { a = { fg = colors.black, bg = colors.cyan } },
			replace = { a = { fg = colors.black, bg = colors.red } },

			inactive = {
				a = { fg = colors.white, bg = colors.black },
				b = { fg = colors.white, bg = colors.black },
				c = { fg = colors.white },
			},
		}

		require('lualine').setup {
			options = {
				theme = bubbles_theme,
				component_separators = '',
				section_separators = { left = '', right = '' },
				disabled_filetypes = {
					statusline = {"NvimTree"},
					winbar = {"NvimTree"},
				}
			},
			sections = {
				lualine_a = { { 'mode', separator = { left = '' }, right_padding = 2 } },
				lualine_b = {
					{ "filename", path = 1 },
					{
					},
				},
				lualine_c = {
					'%=', --[[ add your center compoentnts here in place of this comment ]]
				},
				lualine_x = {},
				lualine_y = { 'filetype', 'progress' },
				lualine_z = {
					{ 'location', separator = { right = '' }, left_padding = 2 },
				},
			},
			inactive_sections = {
				lualine_a = { 'filename' },
				lualine_b = {},
				lualine_c = {},
				lualine_x = {},
				lualine_y = {},
				lualine_z = { 'location' },
			},
			tabline = {},
			extensions = {},
		}
	end
}
