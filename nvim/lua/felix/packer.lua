vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
	-- Packer can manage itself
	use 'wbthomason/packer.nvim'

	use {
		'nvim-telescope/telescope.nvim', tag = '0.1.2',
	-- or 					, branch = '0.1.x',
	requires = {{'nvim-lua/plenary.nvim'}}
	}

	use { "bluz71/vim-nightfly-colors", as = "nightfly"}

	use ('nvim-treesitter/nvim-treesitter', {num = ":TsUpdate"})
	use ('mbbill/undotree')
	use ('tpope/vim-fugitive')
	use {
	  "nvim-neo-tree/neo-tree.nvim",
	    branch = "v3.x",
	    requires = { 
	      "nvim-lua/plenary.nvim",
	      "MunifTanjim/nui.nvim",
	    }
	  }	
	use "kyazdani42/nvim-web-devicons"
end)
