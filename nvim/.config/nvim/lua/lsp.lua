require'lspconfig'.clangd.setup{}
vim.lsp.enable('pyright')

local lspconfig = require('lspconfig')

lspconfig.pyright.setup({
	cmd = {'pyright' },
	filtypes = { 'py' },
})
lspconfig.clangd.setup({
	cmd = {'clangd', '--background-index', '--clang-tidy', '--log=verbose'},
	filetype = {'c', 'cpp'},
	init_options = {
	    clangdFileStatus = true,
		fallbackFlags = { '--std=c99', '-Wall', '-Wextra' },  -- Add other flags if needed
	},
})
require'lspconfig'.asm_lsp.setup({
	cmd =  {'asm-lsp'},
	filetypes = { "asm", "vmasm" },
})

vim.diagnostic.config({
  virtual_text = true,         
  signs = true,                
  underline = true,
  update_in_insert = false, 
})

