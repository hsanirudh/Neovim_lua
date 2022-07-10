-- local variables

local set = vim.opt

-- basic options 

set.number = true
set.autoindent = true
set.tabstop = 2
set.smarttab = true
set.mouse = 'a'
set.clipboard = 'unnamedplus'
set.title = true
set.termguicolors = true

-- init some plugins
require('lualine').setup {
  options = { theme = 'horizon' },
  ...
}
require("bufferline").setup{
  separator_style = "padded_slant"
}
require("nvim-tree").setup()
require("toggleterm").setup{
  open_mapping = [[<C-\>]],
}
require('gitsigns').setup{}