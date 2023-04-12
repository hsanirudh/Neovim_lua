-- local vars
local opts = { noremap = true, silent = true }
local keymap = vim.api.nvim_set_keymap

-- leader key
vim.g.mapleader = ' '

-- better window navigation
keymap('n', '<C-h>', '<C-w>h', opts)
keymap('n', '<C-l>', '<C-w>l', opts)
keymap('n', '<C-j>', '<C-w>j', opts)
keymap('n', '<C-k>', '<C-k>h', opts)

-- Better Indent mode
keymap('v', '<', '<gv', opts)
keymap('v', '>', '>gv', opts)

-- better registers (The yanked word remains the same)
keymap('v', 'p', '"_dP', opts)

-- Move lines up and down in Visual mode
keymap('v', '<A-j>', ":m '>+1<CR>gv=gv", opts)
keymap('v', '<A-k>', ":m '<-2<CR>gv=gv", opts)

-- Move lines up and down in Normal mode
keymap('n', '<A-j>', ":m .+1<CR>==", opts)
keymap('n', '<A-k>', ":m .-2<CR>==", opts)

-- Buffer-navigation
keymap('n', '<S-j>', ':bnext<CR>', opts)
keymap('n', '<S-k>', ':bprevious<CR>', opts)
keymap("n", "<S-e>", ":bdelete<CR>", opts)

-- better escape
keymap('i', 'jk', '<ESC>', opts)
keymap('i', 'kj', '<ESC>', opts)

-- keymaps for nvim
keymap("n", "<A-w>", ":q<CR>", opts)
keymap("n", "<A-S-w>", ":wq<CR>", opts)

-- keymaps for bufferline
keymap("n", "<A-k>", "BufferLineTogglePin<CR>", opts)
