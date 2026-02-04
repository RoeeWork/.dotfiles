require'lspconfig'.clangd.setup{}
vim.lsp.enable('pyright')

local lspconfig = require('lspconfig')

lspconfig.pyright.setup({
	cmd = {'pyright' },
	filtypes = { 'py' },
})
lspconfig.clangd.setup({
	cmd = {'clangd', '--background-index', '--clang-tidy', '--log=verbose'},
	filetype = {'c', 'cpp', 'h'},
	--init_options = {
		--fallbackFlags = {'-std=c++20'},  -- Add other flags if needed
	--},
	root_dir = require('lspconfig.util').root_pattern(".git"),
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

