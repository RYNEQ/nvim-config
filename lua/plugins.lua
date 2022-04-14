
return require('packer').startup(function()
  use 'wbthomason/packer.nvim'
  use 'neovim/nvim-lspconfig'
  

  use 'hrsh7th/cmp-nvim-lsp'
  use 'hrsh7th/cmp-buffer'
  use 'hrsh7th/cmp-path'
  use 'hrsh7th/cmp-cmdline'
  use 'hrsh7th/nvim-cmp'
  use 'hrsh7th/cmp-vsnip'
  use 'hrsh7th/vim-vsnip'
  use 'hrsh7th/vim-vsnip-integ'
  
  use 'nvim-lua/popup.nvim'
  use 'nvim-lua/plenary.nvim'
  use 'nvim-telescope/telescope.nvim' 
  use 'phaazon/hop.nvim'
  use 'akinsho/nvim-toggleterm.lua'
  use 'windwp/nvim-autopairs'
  use 'kyazdani42/nvim-tree.lua'
  use 'voldikss/vim-floaterm'
  use 'vim-airline/vim-airline'
  use 'morhetz/gruvbox'
  use 'ryanoasis/vim-devicons'
  use 'kyazdani42/nvim-web-devicons' 
  use 'akinsho/bufferline.nvim'
  use 'github/copilot.vim'
  use 'mfussenegger/nvim-dap'
  use { "rcarriga/nvim-dap-ui", requires = {"mfussenegger/nvim-dap"} }
  use 'mfussenegger/nvim-dap-python'
  use 'nvim-telescope/telescope-dap.nvim'
end)



