-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  use {
    'nvim-telescope/telescope.nvim',
    tag = '0.1.8',
    requires = { {'nvim-lua/plenary.nvim'} }
  }

  use {
    'nvim-treesitter/nvim-treesitter',
    run = ':TSUpdate'
  }

  use 'theprimeagen/harpoon'
  use 'neovim/nvim-lspconfig'
  use 'vimwiki/vimwiki'

  use {
	'linux-cultist/venv-selector.nvim',
	branch = 'regexp',  -- ← use the rewritten version
	requires = {
	'neovim/nvim-lspconfig',
	'nvim-telescope/telescope.nvim',
	},
    config = function()
      require("venv-selector").setup()
    end
  }
end)

