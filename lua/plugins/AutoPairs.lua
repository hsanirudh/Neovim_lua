return {
    'windwp/nvim-autopairs',
    event = "InsertEnter",
    config = function()
        local npairs = require("nvim-autopairs")
        npairs.setup({
            check_ts = true,
            ts_config = {
              lua = { "string", "source" },
              javascript = { "string", "template_string" },
              java = false,
            },
            disable_filetype = { "TelescopePrompt", "spectre_panel" },
            fast_wrap = {
              chars = { "{", "[", "(", '"', "'" },
              pattern = string.gsub([[ [%'%"%)%>%]%)%}%,] ]], "%s+", ""),
              offset = 0,
              end_key = "$",
              keys = "qwertyuiopzxcvbnmasdfghjkl",
              check_comma = true,
              highlight = "PmenuSel",
              highlight_grey = "LineNr",
            },
            enable_check_bracket_line = false, 
        })
        
        -- Integration with nvim-cmp
        local cmp_autopairs = require('nvim-autopairs.completion.cmp')
        local cmp = require('cmp')
        cmp.event:on(
          'confirm_done',
          cmp_autopairs.on_confirm_done()
        )
    end
}
