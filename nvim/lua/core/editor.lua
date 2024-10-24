vim.opt.clipboard = "unnamedplus"
vim.opt.confirm = true


-- Set the behavior of tab
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.softtabstop = 4
vim.opt.autoindent = true
vim.opt.smartindent = true
vim.opt.backspace = "indent,eol,start"

vim.opt.cursorline = true
vim.opt.cursorlineopt = "screenline"

vim.opt.mouse = "v"

vim.opt.number = true
vim.opt.relativenumber = true

vim.opt.showbreak = " "

vim.opt.smartcase = true

vim.opt.splitright = true

vim.opt.title = true

-- Help Menu
-- Open help window in a vertical split to the right.
vim.api.nvim_create_autocmd("BufWinEnter", {
    group = vim.api.nvim_create_augroup("help_window_right", {}),
    pattern = { "*.txt" },
    callback = function()
        if vim.o.filetype == 'help' then vim.cmd.wincmd("L") end
    end
})

-- Automaticly enter insert mode in the Terminal
vim.api.nvim_create_autocmd({ "TermOpen", "WinEnter" }, { pattern = "term://*", command = "startinsert" })

-- Dont show error messages inlined
