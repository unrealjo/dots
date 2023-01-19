---@diagnostic disable: unused-local, undefined-global
local capabilities = require('cmp_nvim_lsp').default_capabilities(vim.lsp.protocol.make_client_capabilities())

local lspconfig = require("lspconfig")
local servers = {
    "gopls", "pyright", "tailwindcss", "sumneko_lua", "html", "cssls", "tsserver", "clangd"
}
for _, lsp in pairs(servers) do
    lspconfig[lsp].setup {
        capabilities = capabilities
    }
end

lspconfig.intelephense.setup {
    settings = {
        intelephense = {
            telemetry = { enabled = false },
            completion = { fullyQualifyGlobalConstantsAndFunctions = true },
            phpdoc = { returnVoid = false }
        }
    },
}
lspconfig.bashls.setup({
    filetypes = { "sh", "zsh", "bash" }
})


-- Autopairs brackets
local status, autopairs = pcall(require, "nvim-autopairs")
if (not status) then return end

autopairs.setup({
    disable_filetype = { "TelescopePrompt", "vim" },
})
