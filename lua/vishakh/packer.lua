vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  use {
	  'nvim-telescope/telescope.nvim', tag = '0.1.6',
	  -- or                            , branch = '0.1.x',
	  requires = { {'nvim-lua/plenary.nvim'} }
}
use('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})
use('mbbill/undotree')
use('tpope/vim-fugitive')

use{
	'VonHeikemen/lsp-zero.nvim', 
	branch = 'v3.x',
}
use('williamboman/mason.nvim')
use('williamboman/mason-lspconfig.nvim')
use('neovim/nvim-lspconfig')
use('hrsh7th/cmp-nvim-lsp')
use('hrsh7th/nvim-cmp')
use('L3MON4D3/LuaSnip')
use({
    "kylechui/nvim-surround",
    tag = "*", -- Use for stability; omit to use `main` branch for the latest features
    config = function()
        require("nvim-surround").setup({
            -- Configuration here, or leave empty to use defaults
        })
    end
})
end)


