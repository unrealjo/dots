vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
	-- Packer can manage itself
	use('wbthomason/packer.nvim')
	use {
		'nvim-telescope/telescope.nvim', tag = '0.1.0',
		requires = { {'nvim-lua/plenary.nvim'} }
	}
	use('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})
	use('tpope/vim-fugitive')
		-- LSP Support
	use('neovim/nvim-lspconfig')
		-- Autocompletion
	use('hrsh7th/nvim-cmp')
	use('hrsh7th/cmp-buffer')
	use('hrsh7th/cmp-path')
	use('hrsh7th/cmp-nvim-lsp')
	use('hrsh7th/cmp-nvim-lua')
		 -- Snippets
	use('L3MON4D3/LuaSnip')
	use('saadparwaiz1/cmp_luasnip')
    use('navarasu/onedark.nvim')
    use {
     'nvim-lualine/lualine.nvim',
     requires = { 'kyazdani42/nvim-web-devicons', opt = true }
    }
    use('MunifTanjim/prettier.nvim')
end)
