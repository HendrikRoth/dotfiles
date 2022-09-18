local keymap = vim.keymap.set
local opts = { silent = true }

-- Space as leader key
keymap("", "<Space>", "<Nop>", opts)
vim.g.mapleader = " "


-- Modes
--  normal_mode = "n"
--  insert_mode = "i"
--  visual_mode = "v"
--  visual_block_mode = "x"
--  term_mode = "t"
--  command_mode = "c"


-- Normal mode --

-- Window movement
keymap("n", "<leader>wh", "<C-w>h", opts)
keymap("n", "<leader>wj", "<C-w>j", opts)
keymap("n", "<leader>wk", "<C-w>k", opts)
keymap("n", "<leader>wl", "<C-w>l", opts)
keymap("", "sh", "<C-w>h", opts)
keymap("", "sj", "<C-w>j", opts)
keymap("", "sk", "<C-w>k", opts)
keymap("", "sl", "<C-w>l", opts)

-- Window split
keymap("n", "<leader>ws", ":split<CR>", opts)
keymap("n", "<leader>wv", ":vsplit<CR>", opts)

-- Window close
keymap("n", "<leader>wc", ":close<CR>", opts)

-- Increment/decrement
keymap("n", "+", "<C-a>", opts)
keymap("n", "-", "<C-x>", opts)

-- Select all
keymap("n", "<C-a>", "gg<S-v>G", opts)

-- Close buffer
keymap("n", "<leader>q", ":bd<CR>", opts)


-- Visual mode --

-- Paste
keymap("v", "p", '"_dP', opts)

-- Stay in indent mode
keymap("v", "<", "<gv", opts)
keymap("v", ">", ">gv", opts)


-- Insert mode --

-- Fast esc
keymap("i", "jk", "<ESC>", opts)


-- Plugins --

-- Comment
keymap("n", "<leader>/", "<cmd>lua require('Comment.api').toggle_current_linewise()<CR>", opts)
keymap("x", "<leader>/", '<ESC><CMD>lua require("Comment.api").toggle_linewise_op(vim.fn.visualmode())<CR>')

-- Git
keymap("n", "<leader>gg", "<cmd>lua _LAZYGIT_TOGGLE()<CR>", opts)
keymap("n", "<leader>gs", ":Neogit<CR>", opts)
keymap("n", "<leader>gc", ":Neogit commit<CR>", opts)

-- Telescope
keymap("n", "<leader><Space>", ":Telescope find_files<CR>", opts)
keymap("n", "<leader>ff", ":Telescope live_grep<CR>", opts)
keymap("n", "<leader>fp", ":Telescope projects<CR>", opts)
keymap("n", "<leader>fb", ":Telescope buffers<CR>", opts)
keymap("n", "<leader>fh", ":Telescope help_tags<CR>", opts)
keymap("n", "<leader>fo", ":Telescope oldfiles<CR>", opts)
keymap("n", "<leader>fc", ":Telescope commands<CR>", opts)

-- ToggleTerm
keymap("n", "<leader>t", ":ToggleTerm<CR>", opts)
