return {
  'hrsh7th/nvim-cmp',
  event = 'InsertEnter',
  dependencies = {
    'hrsh7th/cmp-buffer',
    'hrsh7th/cmp-path',
    'hrsh7th/cmp-cmdline',
    'hrsh7th/cmp-nvim-lsp',
    'L3MON4D3/LuaSnip',
    'saadparwaiz1/cmp_luasnip',
    'rafamadriz/friendly-snippets',
    'zbirenbaum/copilot-cmp',
  },
  config = function()
    local cmp = require('cmp')
    local luasnip = require('luasnip')
    -- local capabilities = vim.lsp.protocol.make_client_capabilities()
    -- capabilities = require('cmp_nvim_lsp').default_capabilities
    require('luasnip.loaders.from_vscode').lazy_load()
    
    local has_words_before = function()
      unpack = unpack or table.unpack
      local line, col = unpack(vim.api.nvim_win_get_cursor(0))
      return col ~= 0 and vim.api.nvim_buf_get_lines(0, line - 1, line, true)[1]:sub(col, col):match("%s") == nil
    end
    
    local kind_icons = {
      Text = '',
      Method = 'm',
      Function = '',
      Constructor = '',
      Field = '',
      Variable = '',
      Class = '',
      Interface = '',
      Module = '',
      Property = '',
      Unit = '',
      Value = '',
      Enum = '',
      Keyword = '',
      Snippet = '',
      Color = '',
      File = '',
      Reference = '',
      Folder = '',
      EnumMember = '',
      Constant = '',
      Struct = '',
      Event = '',
      Operator = '',
      TypeParameter = '',
    }
    cmp.setup({
      snippet = {
        expand = function(args)
          luasnip.lsp_expand(args.body)
        end,
      },
      completion = {
        completeopt = 'menu,menuone,noinsert',
      },
      mapping = cmp.mapping.preset.insert({
        ['<C-b>'] = cmp.mapping.scroll_docs(-4),
        ['<C-f>'] = cmp.mapping.scroll_docs(4),
        ['<C-Space>'] = cmp.mapping.complete(),
        ['<C-e>'] = cmp.mapping.abort(),
        ['<CR>'] = cmp.mapping.confirm({ 
          behavior = cmp.ConfirmBehavior.Replace,
          select = true,
        }),
        ['<Up>'] = cmp.mapping.select_prev_item({ behavior = cmp.SelectBehavior.Select }),
        ['<Down>'] = cmp.mapping.select_next_item({ behavior = cmp.SelectBehavior.Select }),
      }),
      formatting = {
        fields = { 'kind', 'abbr', 'menu' },
        format = function(entry, vim_item)
          -- Kind icons
          vim_item.kind = string.format('%s', kind_icons[vim_item.kind])
          vim_item.menu = ({
            copilot = '[Copilot]',
            nvim_lsp = '[LSP]',
            luasnip = '[Snippet]',
            buffer = '[Buffer]',
            path = '[Path]',
            cmdline = '[CMD]',
          })[entry.source.name]
          return vim_item
        end,
      },
      sources = cmp.config.sources({
        { name = 'copilot', group_index = 2 },
        { name = 'nvim_lsp', group_index = 2 },
        { name = 'luasnip', group_index = 2 },
      }, {
        { name = 'buffer' },
        { name = 'path' },
      }),
      window = {
        completion = cmp.config.window.bordered(),
        documentation = cmp.config.window.bordered(),
      },
    })
    cmp.setup.cmdline({ '/', '?' }, {
      mapping = cmp.mapping.preset.cmdline(),
      sources = {
        { name = 'buffer' },
      },
    })
    cmp.setup.cmdline(':', {
      mapping = cmp.mapping.preset.cmdline(),
      sources = cmp.config.sources({
        { name = 'path' },
      }, {
        { name = 'cmdline' },
      }),
      matching = { disallow_symbol_nonprefix_matching = false },
    })
  end,
}
