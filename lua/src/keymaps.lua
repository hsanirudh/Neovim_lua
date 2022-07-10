-- local vars
local opts = { noremap = true, silent = true }
local keymap = vim.api.nvim_set_keymap
vim.g.mapleader = ","
-- keymaps for nvim
keymap("n", "<A-w>", ":q<CR>", opts)
keymap("n", "<A-S-w>", ":wq<CR>", opts)

-- keymaps for bufferline
keymap("n", "<A-.>", ":BufferLineCycleNext<CR>", opts)
keymap("n", "<A-,>", ":BufferLineCyclePrev<CR>", opts)
keymap("n", "<A-S-.>", ":BufferLineMoveNext<CR>", opts)
keymap("n", "<A-S-,>", ":BufferLineMovePrev<CR>", opts)
keymap("n", "<A-S-c>", ":BufferLinePickClose<CR>", opts)

-- keymaps for nvim-tree
keymap("n", "<A-t>", ":NvimTreeToggle<CR>", opts)
keymap("n", "<A-f>", ":NvimTreeFocus<CR>", opts)

-- keymaps for Telescope
keymap("n", "<A-s>",":Telescope find_files<CR>" ,opts)
keymap("n", "<C-f>",":Telescope git_files<CR>" ,opts)
keymap("n", "<C-d>",":Telescope git_commits<CR>" ,opts)
keymap("n", "<C-S-d>",":Telescope git_bcommits<CR>" ,opts)

-- diffview
keymap("n", "<C-l>", ":DiffviewOpen<CR>", opts)

-- null-ls
keymap("n", "<leader>f", ":vim.lsp.buf.formatting()<CR>", opts)