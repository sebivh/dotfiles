return {
  "luisiacc/gruvbox-baby",
  priority = 1000,
  lazy = false,
  opts = {},
  config = function()
	  vim.o.background = "dark"
	  vim.cmd.colorscheme "gruvbox-baby"
  end,
}
