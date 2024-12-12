return {
    "rachartier/tiny-inline-diagnostic.nvim",
    event = "VeryLazy",
    priority = 1000, -- needs to be loaded in first
	config = function()
		vim.diagnostic.config({ virtual_text = false })
        require('tiny-inline-diagnostic').setup({
			virt_texts = {
				priority = 2048,
			options = {
				multilines = true,
			}
		},
		})
	vim.diagnostic.config({ virtual_text = false })
    end

}
