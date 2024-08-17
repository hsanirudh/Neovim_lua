local wk = require("which-key")

wk.add({
  {
    mode = { "n", "v" }, -- NORMAL and VISUAL mode
    { "<leader>q", "<cmd>q!<cr>", desc = "Quit" },
    { "<leader>e", ":e<space>", desc = "Edit" },
    
    -- File Operations group
    { "<leader>w", group = "File Operations" },
    { "<leader>we", "<cmd>wq<cr>", desc = "Write and Quit" },
    { "<leader>ww", "<cmd>w<cr>", desc = "Write" },
    
    -- Telescope group
    { "<leader>t", group = "Telescope" },
    { "<leader>tf", "<cmd>Telescope find_files find_command=rg,--hidden,--files<cr>", desc = "Find Files" },
    { "<leader>tl", "<cmd>Telescope live_grep<cr>", desc = "Live grep" },
    { "<leader>tg", "<cmd>Telescope git_commits<cr>", desc = "Git Commits" },
    { "<leader>tb", "<cmd>Telescope file_browser<cr>", desc = "File Browser" },
    { "<leader>tp", "<cmd>Telescope project<cr>", desc = "Projects finder" },
    
    -- nvimtree
    { "<leader>f", "<cmd>NvimTreeOpen<cr>", desc = "Open NvimTree" },
    
    -- New file
    { "<leader>n", "<cmd>e<space>", desc = "Open New file" },
    
    -- Diff-view
    { "<leader>d", "<cmd>DiffviewOpen<cr>", desc = "Git Diff View" },
    
    -- LSP group
    { "<leader>r", group = "LSP" },
    { "<leader>rh", "<cmd>lua vim.lsp.buf.hover()<cr>", desc = "Hover_doc" },
    { "<leader>rd", "<cmd>lua vim.lsp.buf.definition()<cr>", desc = "LSP Definition" },
    { "<leader>rq", "<cmd>lua vim.lsp.buf.declaration()<cr>", desc = "LSP Declaration" },
    { "<leader>rl", "<cmd>LspInfo<cr>", desc = "Connected Language Servers" },
    { "<leader>ri", "<cmd>Mason<cr>", desc = "Mason" },
    { "<leader>rn", "<cmd>NullLsInfo<cr>", desc = "Null-ls Info" },
    { "<leader>rf", "<cmd>lua vim.lsp.buf.format()<cr>", desc = "Null-ls Formatting" },
    
    -- Markdown group
    { "<leader>m", group = "Markdown Preview and carbon.sh" },
    { "<leader>mt", "<cmd>MarkdownPreviewToggle<cr>", desc = "Markdown Toggle" },
    { "<leader>ms", "<cmd>MarkdownPreviewStop<cr>", desc = "Markdown Stop" },
    { "<leader>mc", "<cmd>CarbonNow<cr>", desc = "Carbon.sh code" },
    
    -- LSPSaga
    { "<leader>s", group = "LSPSaga" },
    
    -- Lazy commands group
    { "<leader>b", group = "lazy commands" },
    { "<leader>bh", "<cmd>Lazy help<cr>", desc = "Lazy help" },
    
    -- Select all
    { "<leader>h", group = "Some misc commands" },
    { "<leader>hh", "ggVG", desc = "Select all" },
    { "<leader>hc", ":ColorizerAttachToBuffer<CR>", desc = "Colorizer Attach To Buffer" },
    { "<leader>hy", "ggVGy", desc = "Select all and copy" },

    { "<leader>x", group = "trouble.nvim" },
    { "<leader>c", group = "trouble.nvim" },
    { "<leader>l", group = "LazyGit" },
    
  },
})
