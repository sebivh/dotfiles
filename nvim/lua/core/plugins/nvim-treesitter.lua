return {
	{
		'nvim-treesitter/nvim-treesitter',
		event = "BufReadPost",
		config = function ()
			local treesitter = require("nvim-treesitter")
			treesitter.setup({
				ensure_installed = {"lua", "javascript", "c"},
				-- Automatically install missing parsers when entering buffer
				auto_install = true,
			})

			-- Change compilers for Windows for cmompatavility
			if vim.loop.os_uname().sysname == "Windows_NT" then
				require('nvim-treesitter.install').compilers = { "clang" }
			end
		end
	}
}
