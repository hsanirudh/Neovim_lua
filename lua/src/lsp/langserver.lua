-- lspconfig
local nvim_lsp = require('lspconfig')
-- add lang server here
local langservers = {'tsserver', 'pyright', 'cssls', 'jsonls', 'dockerls', 'yamlls'} 
for _, lsp in ipairs(langservers) do
    nvim_lsp[lsp].setup{}
end