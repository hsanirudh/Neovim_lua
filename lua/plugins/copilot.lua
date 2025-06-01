return {
"zbirenbaum/copilot.lua",
  cmd = "Copilot",
  event = "VeryLazy",
  priority = 1000,
  config = function()
    require("copilot").setup({
      suggestion = { 
        enabled = true,
        auto_trigger = true,
        debounce = 75,
        keymap = {
          accept = false, 
          accept_word = "<C-Right>",
          accept_line = "<C-l>",
          next = "<M-]>",
          prev = "<M-[>",
          dismiss = "<C-]>",
        },
      },
      panel = { enabled = false },       
    })
    
    -- Single tab for LSP/cmp completion only
    vim.keymap.set("i", "<Tab>", function()
      local cmp = require("cmp")
      local luasnip = require("luasnip")
      
      if cmp.visible() then
        -- If completion menu is visible, just navigate through items
        cmp.select_next_item({ behavior = cmp.SelectBehavior.Insert })
      elseif luasnip.expandable() then
        luasnip.expand()
      elseif luasnip.expand_or_jumpable() then
        luasnip.expand_or_jump()
      else
        -- Check if we have words before cursor to trigger completion
        local line, col = unpack(vim.api.nvim_win_get_cursor(0))
        local has_words_before = col ~= 0 and vim.api.nvim_buf_get_lines(0, line - 1, line, true)[1]:sub(col, col):match("%s") == nil
        
        if has_words_before then
          cmp.complete()
        else
          vim.api.nvim_feedkeys(vim.api.nvim_replace_termcodes("<Tab>", true, false, true), "n", false)
        end
      end
    end, { desc = "Tab: LSP/completion navigation" })
    
    -- Add Shift+Tab for going backwards in completion
    vim.keymap.set("i", "<S-Tab>", function()
      local cmp = require("cmp")
      local luasnip = require("luasnip")
      
      -- Check if copilot suggestion is visible first
      local suggestion = require("copilot.suggestion")
      if suggestion.is_visible() then
        suggestion.accept()
      elseif cmp.visible() then
        cmp.select_prev_item({ behavior = cmp.SelectBehavior.Insert })
      elseif luasnip.jumpable(-1) then
        luasnip.jump(-1)
      else
        vim.api.nvim_feedkeys(vim.api.nvim_replace_termcodes("<S-Tab>", true, false, true), "n", false)
      end
    end, { desc = "Shift+Tab: Accept copilot or previous completion" })
  end,
}
