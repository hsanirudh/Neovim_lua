-- which-key setup
local wk = require("which-key")
wk.setup {
  plugins = {
    marks = false,
    registers = false,
    spelling = { enabled = false, suggestions = 20 },
    presets = {
      operators = false,
      motions = false,
      text_objects = false,
      windows = true,
      nav = false,
      z = false,
      g = false
    }
  }
}

-- mappings --
local mappings = {
  q = { ":q!<CR>", "Quit" },
  e = { ":e ", "Edit"},
  -- File Operations
  w = {
   name = "File Operations",
   e = { ":wq<CR>", "Write and Quit"},
   w = { ":w<CR>", "Write"},
  },
  -- Telescope
  t = {
   name = "Telescope",
   f = { ":Telescope find_files find_command=rg,--hidden,--files<CR>", "Find Files"},
   l = { ":Telescope live_grep<CR>", "Live grep"},
   g = { ":Telescope git_commits<CR>", "Git Commits"},
   b = { ":Telescope file_browser<CR>", "File Browser"},
  },
  -- Nvimtree
  f = { ":NvimTreeOpen<CR>", "Open NvimTree"},
  -- New file
  n = { ":DashboardNewFile<CR>", "Open New file"},
  -- Diff-view
  d = {":DiffviewOpen<CR>", "Git Diff View"},
  -- lsp
  r = {
    name = "lsp",
    h = {":lua vim.lsp.buf.hover()<CR>", "Hover_doc"},
    d = {":lua vim.lsp.buf.definition()<CR>", "LSP Definition"},
    q = {":lua vim.lsp.buf.declaration()<CR>", "LSP Declaration"},
    v = {":Lspsaga hover_doc<CR>", "LSPSaga Hover"},
    l = {":LspInfo<cr>", "Connected Language Servers"},
    i = {":LspInstallerInfo<CR>", "Lsp Language Servers Installer"},
    n = {":NullLsInfo<CR>", "Null-ls Info"},
    f = {":lua vim.lsp.buf.formatting()<CR>", "Null-ls Formatting"},
  },
  -- Markdown
  m = {
    name = "Markdown Preview",
    t = {":MarkdownPreviewToggle<CR>", "Markdown Toggle"},
    s = {":MarkdownPreviewStop<CR>", "Markdown Stop"}
  },
}

-- opts
local opts = { prefix = '<leader>' }

-- init
wk.register(mappings, opts)
