local lspconfig = require "lspconfig"

------[General LSp]------------
local servers = {
    "gopls", "pyright","bashls","tailwindcss", "sumneko_lua", "html", "cssls","tsserver","clangd"
}

for _, lsp in pairs(servers) do
    lspconfig[lsp].setup{}
end
------[Lua LSp]------------

local sumneko_root_path = "/home/joseph/Developer/lua"
local sumneko_binary = sumneko_root_path .. "/bin/lua-language-server"
lspconfig.sumneko_lua.setup {
	cmd = { sumneko_binary, "-E", sumneko_root_path .. "/main.lua" },
	settings = {
		Lua = {
			runtime = {
				version = "LuaJIT",
				path = vim.split(package.path, ";"),
			},
			diagnostics = {
				globals = { "vim" },
			},
			workspace = {
				library = {
					[vim.fn.expand("$VIMRUNTIME/lua")] = true,
					[vim.fn.expand("$VIMRUNTIME/lua/vim/lsp")] = true,
				},
			},
		},
	},
    root_dir = lspconfig.util.root_pattern('*.lua')
}

------[Php Lsp]------------
lspconfig.intelephense.setup {
    settings = {
        intelephense = {
            telemetry = {enabled = false},
            completion = {fullyQualifyGlobalConstantsAndFunctions = true},
            phpdoc = {returnVoid = false}
        }
    },
    root_dir = lspconfig.util.root_pattern('./*.php')
}

------[Javascript Lsp]------------
lspconfig.tsserver.setup {
    filetypes = {
        'html', 'typescriptreact', 'javascriptreact'
    },
--    root_dir = lspconfig.util.root_pattern('*.js')
}

------[Bash Lsp]------------
lspconfig.bashls.setup {settings = {
    filetypes = {"sh", "zsh", "bash"}
}}

------[Emmet Lsp]------------
--lspconfig.emmet_ls.setup({
--    filetypes = {
--        'html', 'typescriptreact', 'javascriptreact','php'
--    }
--})

-------------------------
lspconfig.tailwindcss.setup{}
