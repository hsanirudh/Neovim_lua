-- using protected call to lspcofig not installed
local status_ok, _ = pcall(require, "lspconfig")
if not status_ok then
  return
end

require("mason").setup({
  ui = {
    icons = {
      package_installed = "✓",
      package_pending = "➜",
      package_uninstalled = "✗",
    },
  },
  ensure_installed = {"clagnd", "bashls", "cssls", "dockerls", "java_language_server", "tsserver", "lua_ls", }. 
})

local mlsp = require("mason-lspconfig")

mlsp.setup_handlers({
  function(server_name)
    require("lspconfig")[server_name].setup({})
  end,
})
