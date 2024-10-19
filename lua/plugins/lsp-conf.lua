return {
    {
        "williamboman/mason.nvim",
        config = function()
           require("mason").setup()
        end
    },
    {
        "williamboman/mason-lspconfig.nvim",
        config = function()
            require("mason-lspconfig").setup({
                ensure_installed = {"lua_ls","jdtls"}

            })
        end
    },
    {
        "neovim/nvim-lspconfig",
        config = function()
            require("lspconfig").lua_ls.setup{
                settings = {
                    Lua = {
                        diagnostics = {
                            -- Recognize the `vim` global variable
                            globals = { 'vim' },
                        },
                        workspace = {
                            -- Make the server aware of Neovim runtime files
                            library = vim.api.nvim_get_runtime_file("", true),
                            -- Disable third-party library checks (optional)
                            checkThirdParty = false,
                        },
                        telemetry = {
                            enable = false,
                        },
                    }
                }
            }
            require("lspconfig").jdtls.setup{}
        end
    },
}
