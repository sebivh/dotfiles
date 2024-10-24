local opts = { noremap = true, silent = true }


local keymap = vim.api.nvim_set_keymap


keymap("", "<Space>", "<Nop>", opts )
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

-- Modes
-- 	normal_mode = "n"
-- 	insert_mode = "i"
-- 	visual_mode = "v"
-- 	visual_block_mode = "x"
-- 	term_mode = "t"
-- 	command_mode = "c"



--########### Nvim Tree #############ä
opts.desc = "Focus auf NvimTree File Explorer"
vim.keymap.set("n", "<leader>ee", function ()
	if vim.fn.bufname():match 'NvimTree_' then
		vim.cmd.wincmd 'p'
	else
		vim.cmd('NvimTreeFocus')
	end
end, opts)

opts.desc = "Öffnet oder Schliest den NvimTree File Explorer"
keymap("n", "<leader>ex", "<cmd>NvimTreeToggle<CR>", opts)




--########### Telescope #############
opts.desc = "Suche Datein mit Telescope"
keymap("n", "<leader>tf", "<cmd>Telescope find_files<CR>", opts)

opts.desc = "Suche alte Datein mit Telescope"
keymap("n", "<leader>tr", "<cmd>Telescope oldfiles<CR>", opts)

opts.desc = "Telescope live Suche"
keymap("n", "<leader>tt", "<cmd>Telescope live_grep<CR>", opts)

opts.desc = "String Suche mit Telescope"
keymap("n", "<leader>tc", "<cmd>Telescope grep_string<CR>", opts)


--############ Sessions #############
opts.desc = "Session speichern"
keymap("n", "<leader>ss", "<cmd>SessionManager save_current_session<CR>", opts)
opts.desc = "Session Laden"
keymap("n", "<leader>sl", "<cmd>SessionManager load_session<CR>", opts)
opts.desc = "Session löschen"
keymap("n", "<leader>sd", "<cmd>SessionManager delete_session<CR>", opts)
opts.desc = "Letzte offene Session Laden"
keymap("n", "<leader>so", "<cmd>SessionManager load_last_session<CR>", opts)



--########## Move.nvim #############
-- Normal-mode commands
opts.desc = "Bewege eine Zeile nach unten"
keymap('n', '<A-j>', ':MoveLine(1)<CR>', opts)

opts.desc = "Bewege eine Zeile nach oben"
keymap('n', '<A-k>', ':MoveLine(-1)<CR>', opts)

-- Visual-mode commands
opts.desc = "Bewege die Auswahl nach oben"
keymap('v', '<A-j>', ':MoveBlock(1)<CR>', opts)

opts.desc = "Bewege die Auswahl nach unten"
keymap('v', '<A-k>', ':MoveBlock(-1)<CR>', opts)

opts.desc = "Bewege die Auswahl nach links"
keymap('v', '<A-h>', ':MoveHBlock(-1)<CR>', opts)

opts.desc = "Bewege die Auswahl nach rechts"
keymap('v', '<A-l>', ':MoveHBlock(1)<CR>', opts)


--########## Misc #################
opts.desc = "Fügt eine neue Zeile unter dem Cursor ein"
keymap('n', '<CR>', "<cmd>call append(line('.'), repeat([''], v:count1))<CR>", opts)

--######### Termial Mode ##########
opts.desc = "Open Terminal in Split mode"
keymap('n', '<leader>cmd', '<C-w>v<CR><cmd>term<CR><cmd>startinsert<CR>', opts)
opts.desc = "Exit Terminal Mode"
keymap('t', '<Esc>', '<C-\\><C-n>', opts)


--########## Neogen ###############
opts.desc = "Dokumentation Hinzufügen"
keymap('n', '<leader>d', '<cmd>Neogen<CR>', opts)

