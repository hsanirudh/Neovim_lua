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
  f = {
    ":NvimTreeOpen<CR>", "Open NvimTree"
  },
  -- New file
  n = { ":e ", "Open New file"},
  -- Diff-view
  d = {":DiffviewOpen<CR>", "Git Diff View"},
  -- lsp
  r = {
    name = "LSP",
    h = {":lua vim.lsp.buf.hover()<CR>", "Hover_doc"},
    d = {":lua vim.lsp.buf.definition()<CR>", "LSP Definition"},
    q = {":lua vim.lsp.buf.declaration()<CR>", "LSP Declaration"},
    l = {":LspInfo<cr>", "Connected Language Servers"},
    i = {":Mason<CR>", "Mason"},
    n = {":NullLsInfo<CR>", "Null-ls Info"},
    f = {":lua vim.lsp.buf.format()<CR>", "Null-ls Formatting"},
    a = {"Code Actions"},
    m = {"Type Defenation"},
  },
  -- Markdown
  m = {
    name = "Markdown Preview and carbon.sh",
    t = {":MarkdownPreviewToggle<CR>", "Markdown Toggle"},
    s = {":MarkdownPreviewStop<CR>", "Markdown Stop"},
    c = {":CarbonNow<CR>", "Carbon.sh code"}
  },
  -- diagnostic list
  j = {"Diagnostic list"},
  s = {name = "LSPSaga"},
  o = {"Open Diagnostics"},
  b = {
    name = "Packer commands",
    n = {":PackerInstall<CR>", "Packer Install"},
    s = {":PackerSync<CR>", "Packer Sync"},
    c = {":PackerCompile<CR>", "Packer Compile"},
    e = {":PackerStatus<CR>", "Packer Status"},
    r = {":PackerClean<CR>", "Packer Clean"},
  },
  h = {"ggVG", "Select all"},
}

-- opts
local opts = { prefix = '<leader>' }

-- init
wk.register(mappings, opts)
