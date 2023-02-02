--require('onedark').setup {
--    style = 'deep',
--   transparent = true,
--}
--require('onedark').load()
require("gruvbox").setup({
  contrast = "hard", -- can be "hard", "soft" or empty string
})
vim.cmd([[colorscheme gruvbox]])
