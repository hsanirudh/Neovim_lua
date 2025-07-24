return {
    "neovim/nvim-lspconfig",
    event = {"BufReadPre", "BufNewFile"},
    dependencies = {
        "hrsh7th/cmp-nvim-lsp",
        { "antosha417/nvim-lsp-file-operations", opts = true },
        "williamboman/mason-lspconfig.nvim", 
    },
    config = function ()
        local lspconf = require("lspconfig")
        local cmp_nvim_lsp = require("cmp_nvim_lsp")
        local lsp_file_ops = require("lsp-file-operations")
        
        local mason_lsp_ok, mason_lsp = pcall(require, "mason-lspconfig")

        local capabilities = cmp_nvim_lsp.default_capabilities()
        capabilities = vim.tbl_deep_extend(
            "force",
            capabilities,
            lsp_file_ops.default_capabilities()
        )

        local opts = {
            noremap = true,
            silent = true
        }
        
        local on_attach = function(client, bufnr)
            opts.buffer = bufnr
            local keymap = vim.keymap

            opts.desc = "Show LSP references"
            keymap.set("n", "gl", "<cmd>Telescope lsp_references<CR>", opts)

            opts.desc = "Go to declaration"
            keymap.set("n", "gD", vim.lsp.buf.declaration, opts)

            opts.desc = "Show LSP definitions"
            keymap.set("n", "gd", "<cmd>Telescope lsp_definitions<CR>", opts)

            opts.desc = "Show LSP implementations"
            keymap.set("n", "gi", "<cmd>Telescope lsp_implementations<CR>", opts)

            opts.desc = "Show LSP type definitions"
            keymap.set("n", "gt", "<cmd>Telescope lsp_type_definitions<CR>", opts)

            opts.desc = "See available code actions"
            keymap.set({ "n", "v" }, "<leader>ca", vim.lsp.buf.code_action, opts)

            opts.desc = "Smart rename"
            keymap.set("n", "<leader>rn", vim.lsp.buf.rename, opts)

            opts.desc = "Show buffer diagnostics"
            keymap.set("n", "<leader>D", "<cmd>Telescope diagnostics bufnr=0<CR>", opts)

            opts.desc = "Show line diagnostics"
            keymap.set("n", "<leader>d", vim.diagnostic.open_float, opts)

            opts.desc = "Go to previous diagnostic"
            keymap.set("n", "[d", vim.diagnostic.goto_prev, opts)

            opts.desc = "Go to next diagnostic"
            keymap.set("n", "]d", vim.diagnostic.goto_next, opts)

            opts.desc = "Show documentation for what is under cursor"
            keymap.set("n", "K", vim.lsp.buf.hover, opts)

            opts.desc = "Restart LSP"
            keymap.set("n", "<leader>rs", ":LspRestart<CR>", opts)
        end

        local signs = { Error = "✖ ", Warn = "⚠ ", Hint = "⚑ ", Info = "ℹ " }
        for type, icon in pairs(signs) do
            local hl = "DiagnosticSign" .. type
            vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = "" })
        end

        if mason_lsp_ok and mason_lsp.setup_handlers then
            mason_lsp.setup_handlers({
                function(server_name)
                    lspconf[server_name].setup({
                        capabilities = capabilities,
                        on_attach = on_attach,
                    })
                end,
            })
        end

        lspconf["emmet_ls"].setup({
            capabilities = capabilities,
            on_attach = on_attach,
            filetypes = { "html", "typescriptreact", "javascriptreact", "css" },
        })
        
        lspconf["lua_ls"].setup({
            capabilities = capabilities,
            on_attach = on_attach,
            settings = {
                Lua = {
                    diagnostics = { globals = { "vim" } },
                    workspace = {
                        library = {
                            [vim.fn.expand("$VIMRUNTIME/lua")] = true,
                            [vim.fn.stdpath("config") .. "/lua"] = true,
                        },
                    },
                },
            },
        })
    end,
}
