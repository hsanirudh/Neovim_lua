return {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    event = {"BufReadPre","BufNewFile"},
    config = function()
        require'nvim-treesitter.configs'.setup {
            -- Common programming languages that I use mostly related to web dev stuff
            ensure_installed = {  
                "bash",
                "lua", 
                "vim", 
                "vimdoc", 
                "query", 
                "markdown_inline", 
                "java", 
                "javascript", 
                "typescript", 
                "html", 
                "css",
                "dockerfile",
                "bash",
                "tsx",
                "sql",
                "regex",
                "go",
                "http",
                "csv",
                "cpp",
            },
            sync_install = false,
            auto_install = true,
            highlight = {
              enable = true,
              disable = function(lang, buf)
                  local max_filesize = 100 * 1024 
                  local ok, stats = pcall(vim.loop.fs_stat, vim.api.nvim_buf_get_name(buf))
                  if ok and stats and stats.size > max_filesize then
                      return true
                  end
              end,
              additional_vim_regex_highlighting = false,
            }
          }
    end
}