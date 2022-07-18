-- local vars
local opts = { noremap = true, silent = true }
local keymap = vim.api.nvim_set_keymap
vim.g.mapleader = ","
-- keymaps for nvim
keymap("n", "<A-w>", ":q<CR>", opts)
keymap("n", "<A-S-w>", ":wq<CR>", opts)

-- keymaps for bufferline
keymap("n", "<A-2>", ":BufferLineCycleNext<CR>", opts)
keymap("n", "<A-1>", ":BufferLineCyclePrev<CR>", opts)
keymap("n", "<A-S-2>", ":BufferLineMoveNext<CR>", opts)
keymap("n", "<A-S-1>", ":BufferLineMovePrev<CR>", opts)
keymap("n", "<A-S-c>", ":BufferLinePickClose<CR>", opts)

-- keymaps for nvim-tree
keymap("n", "<A-f>", ":NvimTreeFocus<CR>", opts)

-- keymaps for Telescope
keymap("n", "<S-f>", ":Telescope find_files find_command=rg,--hidden,--files<CR>", opts)
keymap("n", "<S-l>", ":Telescope live_grep<CR>", opts)
keymap("n", "<S-s>", ":Telescope git_commits<CR>", opts)
keymap("n", "<S-b>", ":Telescope file_browser<CR>", opts)

-- diffview
keymap("n", "<C-l>", ":DiffviewOpen<CR>", opts)

-- keymap for new file
keymap("n", "<Space>n", ":DashboardNewFile<CR>", opts)

-- null-ls
keymap("n", "<A-t>", ":lua vim.lsp.buf.formatting()<CR>", opts)

-- lspsaga
keymap("n", "<leader>d", "<cmd>Lspsaga hover_doc<CR>", opts)
