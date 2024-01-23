vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

-- move visual text objects up and down
vim.api.nvim_set_keymap("v", "J", ":m '>+1<CR>gv=gv", { desc = "move textobject down", noremap = false })
vim.api.nvim_set_keymap("v", "K", ":m '<-2<CR>gv=gv", { desc = "move textobject up", noremap = false })

-- take line below cursor and append to end of current line without changing cursor location
vim.api.nvim_set_keymap(
	"n",
	"J",
	"mzJ`z",
	{ desc = "append line below to current line without changing cursor", noremap = false }
)

-- half page jumps to quickly navigate files without changing cursor x-location
vim.api.nvim_set_keymap("n", "<C-j>", "<C-d>zz", { desc = "half page down", noremap = false })
vim.api.nvim_set_keymap("n", "<C-k>", "<C-u>zz", { desc = "half page up", noremap = false })

-- keep search (from editor-command-line, {noremap=false}) terms in the middle of the screen
vim.api.nvim_set_keymap("n", "n", "nzzzv", { desc = "next in middle", noremap = false })
vim.api.nvim_set_keymap("n", "N", "Nzzzv", { desc = "prev in middle", noremap = false })

-- paste over text without overwriting register
vim.api.nvim_set_keymap(
	"x",
	"<leader>p",
	[["_dP]],
	{ desc = "overwrite text without overwriting buffer", noremap = false }
)
vim.api.nvim_set_keymap(
	"n",
	"<leader>p",
	[["_dP]],
	{ desc = "overwrite text without overwriting buffer", noremap = false }
)
vim.api.nvim_set_keymap(
	"v",
	"<leader>p",
	[["_dP]],
	{ desc = "overwrite text without overwriting buffer", noremap = false }
)

-- new line after and before without going into insert mode
vim.api.nvim_set_keymap("n", "<leader>o", [[o<Esc>]], { desc = "next newline without insert mode", noremap = false })
vim.api.nvim_set_keymap("n", "<leader>O", [[O<Esc>]], { desc = "prev newline without insert mode", noremap = false })

-- insert mode horizontal traversal
vim.api.nvim_set_keymap("i", "<C-f>", [[<C-o>f]], { noremap = false, desc = "find next character in line" })
vim.api.nvim_set_keymap(
	"i",
	"<C-a>",
	[[<C-o>^]],
	{ noremap = false, desc = "go to beginning of line (non-empty char)" }
)
vim.api.nvim_set_keymap("i", "<C-e>", [[<C-o>$]], { noremap = false, desc = "go to end of line" })
