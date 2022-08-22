local escape = require("better_escape")
escape.setup {
    mapping = {"jk", "jj"},
    timeout = vim.o.timeoutlen,
    clear_empty_lines = false,
    keys = "<Esc>",
}
