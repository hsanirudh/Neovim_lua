local status_lsp_installer, lsp_installer = pcall(require, "nvim-lsp-installer")
if not status_lsp_installer then
  return
end

lsp_installer.on_server_ready(function(server)
  local capabilities = require("cmp_nvim_lsp").update_capabilities(vim.lsp.protocol.make_client_capabilities())
  local opts = { capabilities = capabilities }
  if server.name == "sumneko_lua" then
    opts = vim.tbl_deep_extend("force", {
      on_attach = on_attach,
      settings = {
        Lua = {
          runtime = { version = "LuaJIT", path = vim.split(package.path, ";") },
          diagnostics = { globals = { "vim" } },
          workspace = { library = vim.api.nvim_get_runtime_file('', true), [vim.fn.expand("$VIMRUNTIME/lua")] = true,[vim.fn.stdpath("config") .. "/lua"] = true,checkThirdParty = false },
          telemetry = { enable = false },
        },
      },
    }, opts)
  end
  server:setup(opts)
end)
