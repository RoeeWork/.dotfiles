return {
	  "nvim-treesitter/nvim-treesitter",
	  build = ":TSUpdate",
	  config = function()
		require("nvim-treesitter.config").setup({
		  highlight = { enable = true },
		  indent = { enable = true },
		  ensure_installed = { "c", "lua", "markdown" },
		})
	  end,
  { 'mason-org/mason.nvim', opts = {} },

  {
    'mason-org/mason-lspconfig.nvim',
    dependencies = { 'neovim/nvim-lspconfig' },
    opts = {}
  },
}
