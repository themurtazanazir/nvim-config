local opts = {noremap = true, silent = true}

local keymap = vim.keymap.set

-- remap space as leader key
keymap("", "<Space>", "<Nop>", opts)
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Modes
-- 	normal_mode = "n"
-- 	insert_mode = "i"
-- 	visual_mode = "v"
-- 	visual_block_mode = "x"
-- 	term_mode = "t"
-- 	command_mode = "c"

-- Normal --
-- Window Navigation
keymap("n", "<C-h>", "<C-w>h", opts)
keymap("n", "<C-j>", "<C-w>j", opts)
keymap("n", "<C-k>", "<C-w>k", opts)
keymap("n", "<C-l>", "<C-w>l", opts)


-- Resize with arrows
keymap("n", "<C-Up>", ":resize -2<CR>", opts)
keymap("n", "<C-Down>", ":resize +2<CR>", opts)
keymap("n", "<C-Left>", ":vertical resize -2<CR>", opts)
keymap("n", "<C-Right>", ":vertical resize +2<CR>", opts)


-- Navigate buffers
keymap("n", "<S-l>", ":bnext<CR>", opts)
keymap("n", "<S-h>", ":bprevious<CR>", opts)

-- Move text up and down
keymap("n", "<A-j>", ":m .+1<CR>==", opts)
keymap("n", "<A-k>", ":m .-2<CR>==", opts)

-- Fast exit from insert mode
keymap("i", "jk", "<ESC>", opts)
keymap("i", "kj", "<ESC>", opts)

-- Visual --
-- Stay in indent mode
keymap("v", "<", "<gv^", opts)
keymap("v", ">", ">gv^", opts)

-- Move text up and down
keymap("v", "<A-j>", ":m '>+1<CR>gv=gv", opts)
keymap("v", "<A-k>", ":m '<-2<CR>gv=gv", opts)

-- Dont yank if pasted on something else
keymap("v", "p", '"_dP', opts)

-- Telescope
keymap("n", "<leader>ff", "<cmd>Telescope find_files<cr>", opts)
keymap("n", "<leader>fg", "<cmd>Telescope live_grep<cr>", opts)
keymap("n", "<leader>fb", "<cmd>Telescope buffers<cr>", opts)
keymap("n", "<leader>fh", "<cmd>Telescope help_tags<cr>", opts)

-- Lexplore
vim.keymap.set('n', '<leader>e', ':Lexplore<CR>', opts)

-- ToggleTerm
keymap("n", "<leader>t", "<cmd>ToggleTerm<cr>", opts)
keymap("n", "<leader>lg", "<cmd>lua _LAZYGIT_TOGGLE()<CR>", opts)
keymap("n", "<leader>nt", "<cmd>lua _NODE_TOGGLE()<CR>", opts)
keymap("n", "<leader>nc", "<cmd>lua _NCDU_TOGGLE()<CR>", opts)
keymap("n", "<leader>ht", "<cmd>lua _HTOP_TOGGLE()<CR>", opts)
keymap("n", "<leader>py", "<cmd>lua _PYTHON_TOGGLE()<CR>", opts)
