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
keymap("", "s", "", opts)
keymap("n", "<leader>wh", "<C-w>h", opts)
keymap("n", "<leader>wj", "<C-w>j", opts)
keymap("n", "<leader>wk", "<C-w>k", opts)
keymap("n", "<leader>wl", "<C-w>l", opts)
keymap("", "sh", "<C-w>h", opts)
keymap("", "sj", "<C-w>j", opts)
keymap("", "sk", "<C-w>k", opts)
keymap("", "sl", "<C-w>l", opts)
keymap("", "sJ", ":resize -2<CR>", opts)
keymap("", "sK", ":resize +2<CR>", opts)
keymap("", "sH", ":vertical resize -2<CR>", opts)
keymap("", "sL", ":vertical resize +2<CR>", opts)

-- Window split
keymap("n", "<leader>ws", ":split<CR>", opts)
keymap("n", "<leader>wv", ":vsplit<CR>", opts)
keymap("n", "sc", ":split<CR>", opts)
keymap("n", "sv", ":vsplit<CR>", opts)

-- Window close
keymap("n", "<leader>wc", ":close<CR>", opts)
keymap("n", "sx", ":close<CR>", opts)

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
keymap("n", "<leader>gs", ":Neogit<CR>", opts)
keymap("n", "<leader>gc", ":Neogit commit<CR>", opts)

-- Telescope
keymap("n", "<leader><Space>", require("user.fzf").find_project_files, opts)
keymap("n", "<leader>f", ":Telescope live_grep<CR>", opts)
keymap("n", "<leader>p", ":Telescope projects<CR>", opts)
keymap("n", "<leader>b", ":Telescope buffers<CR>", opts)
keymap("n", "<leader>h", ":Telescope help_tags<CR>", opts)
keymap("n", "<leader>o", ":Telescope oldfiles<CR>", opts)
keymap("n", "<leader>c", ":Telescope commands<CR>", opts)

-- ToggleTerm
keymap("n", "<leader>t", ":ToggleTerm<CR>", opts)

-- Lab
keymap("n", "<leader>rr", ":Lab code run<CR>", opts)
keymap("n", "<leader>rs", ":Lab code stop<CR>", opts)
keymap("n", "<leader>rp", ":Lab code panel<CR>", opts)
