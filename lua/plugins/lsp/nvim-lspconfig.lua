local on_attach = require("util.lsp").on_attach
local diagnostic_signs = require("util.icons").diagnostic_signs
return {
    "neovim/nvim-lspconfig",
    event = { "BufReadPre", "BufNewFile" },
    dependencies = {
        "williamboman/mason.nvim",
        "williamboman/mason-lspconfig.nvim",
        "j-hui/fidget.nvim",
        "folke/neovim",
        "hrsh7th/cmp-nvim-lsp",
        "hrsh7th/nvim-cmp",
        "hrsh7th/cmp-buffer",
        { "antosha417/nvim-lsp-file-operations", config = true },
        "windwp/nvim-autopairs",
        "creativenull/efmls-configs-nvim",
    },
    config = function ()
        -- require("neoconf").setup({})
        local cmp_nvim_lsp = require("cmp_nvim_lsp")
        local lspconfig = require("lspconfig")
        local capabilities = cmp_nvim_lsp.default_capabilities()

        for type, icon in pairs(diagnostic_signs) do
            local hl = "Diagnostic_Signs" .. type
            vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = ""})
        end


        -- LUA
        lspconfig.lua_ls.setup({
            capabilities = capabilities,
            on_attach = on_attach,
            settings = {
                Lua = {
                    diagnostics = {
                        globals = { "vim" },
                    },
                    workspace = {
                        library = {
                            [vim.fn.expand("$VIMRUNTIME/lua")] = true,
                            [vim.fn.stdpath("config") .. "/lua"] = true,
                        },
                    },
                },
            },
        })

        -- JSON
        lspconfig.jsonls.setup({
            capabilities = capabilities,
            on_attach = on_attach,
            filetypes = { "json", "jsonc" },
        })

        -- PYTHON
        lspconfig.pyright.setup({
            capabilities = capabilities,
            on_attach = on_attach,
            settings = {
                pyright = {
                    disableOrganizeImports = false,
                    analysis = {
                        useLibraryCodeForTypes = true,
                        autoSearchPaths = true,
                        diagnosticMode = "workspace",
                        autoImportCompletions = true,
                    },
                },
            },
        })

        -- BASH
        lspconfig.bashls.setup({
            capabilities = capabilities,
            on_attach = on_attach,
            filetypes = { "sh", "aliasrc" }
        })

        -- DOCKER
        lspconfig.dockerls.setup({
            capabilities = capabilities,
            on_attach = on_attach,
        })

        -- C/C++
        lspconfig.clangd.setup({
            capabilities = capabilities,
            on_attach = on_attach,
            cmd = {
                "clangd",
                "--offset-encoding=utf-16",
            },
        })

        -- TYPESCRIPT
        lspconfig.tsserver.setup({
            on_attach = on_attach,
            capabilities = capabilities,
            filetypes = {
                "typescript",
            },
            root_dir = lspconfig.util.root_pattern("package.json", "tsconfig.json", ".git"),
        })

        -- WEBDEV EXTRA
        lspconfig.emmet_ls.setup({
            capabilities = capabilities,
            on_attach = on_attach,
            filetypes = {
                "typescriptreact",
                "javascriptreact",
                "javascript",
                "css",
                "sass",
                "scss",
                "less",
                "html",
            },
        })


        local luacheck = require("efmls-configs.linters.luacheck")
        local stylua = require("efmls-configs.formatters.stylua")
        local flake8 = require("efmls-configs.linters.flake8")
        local black = require("efmls-configs.formatters.black")
        local eslint = require("efmls-configs.linters.eslint")
        local prettier_d = require("efmls-configs.formatters.prettier_d")
        local fixjson = require("efmls-configs.formatters.fixjson")
        local shellcheck = require("efmls-configs.linters.shellcheck")
        local shfmt = require("efmls-configs.formatters.shfmt")
        local hadolint = require("efmls-configs.linters.hadolint")
        local cpplint = require("efmls-configs.linters.cpplint")
        local clangformat = require("efmls-configs.formatters.clang_format")


        -- CONFIG EFM
        lspconfig.efm.setup({
            init_options = {
                documentFormatting = true,
                documentRangeFormatting = true,
                hover = true,
                documentSymbol = true,
                codeAction = true,
                completion = true,
            },
            settings = {
                languages = {
                    lua = { luacheck, stylua },
                    python = { flake8, black },
                    json = { eslint, fixjson },
                    jsonc = { eslint, fixjson },
                    sh = { shellcheck, shfmt },
                    markdown = { prettier_d },
                    docker = { hadolint, prettier_d },
                    html = { prettier_d },
                    css = { prettier_d },
                    javascript = { eslint, prettier_d },
                    javascriptreact = { eslint, prettier_d },
                    typescript = { eslint, prettier_d },
                    typescriptreact = { eslint, prettier_d },
                    c = { clangformat, cpplint },
                    cpp = { clangformat, cpplint },
                    -- rust = { }
                },
            },
        })

    end,
}

