return {
    "williamboman/mason.nvim",
    dependencies = {
        "williamboman/mason-lspconfig.nvim",
        "neovim/nvim-lspconfig",
       "WhoIsSethDaniel/mason-tool-installer.nvim"
    },
    config = function ()
      local mason = require("mason")
      local mason_lsp = require("mason-lspconfig")
      local mason_tools = require("mason-tool-installer")
      mason.setup({
        ui = {
            icons = {
                package_installed = "✓",
                package_pending = "➜",
                package_uninstalled = "✗"
            }
        },
      })
      mason_lsp.setup({
        ensure_installed = {
            "lua_ls",
            "cssls",
            "tailwindcss",
            "pyright",
            "emmet_ls",
            "clangd",
            "jdtls",
            "dockerls"

        },
        automatic_installation = true,
      })
      mason_tools.setup{
        ensure_installed = {
          'prettier',
          'prettierd',
          'stylua',
          'isort',
          'black',
          'eslint_d'
        },
      }
    end
}
