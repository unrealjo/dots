---@diagnostic disable: unused-local, undefined-global
local capabilities = require('cmp_nvim_lsp').default_capabilities(vim.lsp.protocol.make_client_capabilities())
local lspconfig = require("lspconfig")
local servers = {
    "gopls", "pyright", "sumneko_lua", "html", "cssls", "tsserver", "clangd","jsonls",
}
for _, lsp in pairs(servers) do
    lspconfig[lsp].setup {
        capabilities = capabilities
    }
end

require 'lspconfig'.intelephense.setup {
    capabilities = capabilities,
    on_attach = on_attach,
    settings = {
        intelephense = {
            -- possible values: stubs.txt
            stubs = {
                'Core',
                'SPL',
                'imagick',
                'standard',
                'pcre',
                'date',
                'json',
                'ctype',
                'SimpleXML',
            },
            telemetry = { enabled = false },
            completion = { fullyQualifyGlobalConstantsAndFunctions = true },
            phpdoc = { returnVoid = false }
        }
    }
}

lspconfig.tailwindcss.setup {
    root_dir = lspconfig.util.root_pattern('tailwind.config.js', 'tailwind.config.ts', 'postcss.config.js',
        'postcss.config.ts')

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
