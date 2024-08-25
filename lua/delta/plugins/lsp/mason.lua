return {
    "williamboman/mason.nvim",
    dependencies = {
        "williamboman/mason-lspconfig.nvim",
        "WhoIsSethDaniel/mason-tool-installer.nvim",
    },
    config = function()
        local mason = require("mason")

        local mason_lspconfig = require("mason-lspconfig")
        local mason_tool_installer = require("mason-tool-installer")

        mason.setup({
            ui = {
                icons = {
                    package_installed = "✓",
                    package_pending = "➜",
                    package_uninstalled = "✗",
                },
            },
        })

        mason_lspconfig.setup({
            ensure_installed = {
                "tsserver",
                "html",
                "cssls",
                "tailwindcss",
                "lua_ls",
                "arduino_language_server",
                "bashls",
                "clangd",
                "cmake",
                "dockerls",
                "glslls",
                "jsonls",
                "jdtls",
                "pyright",
                "sqlls",
                "zls",
            },
        })

        mason_tool_installer.setup({
            ensure_installed = {
                "prettier",
                "stylua",
                "isort",
                "black",
                "clang-format",
                "cmakelang",
                "google-java-format",
                "asmfmt",
                "eslint_d",
                "pylint",
                "stylelint",
                "jsonlint",
                "yamllint",
                "cpplint",
                "checkstyle",
            },
        })
    end,
}
