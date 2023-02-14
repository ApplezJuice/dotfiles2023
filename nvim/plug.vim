if has("nvim")
  let g:plug_home = stdpath('data') . '/plugged'
endif

call plug#begin()

if has("nvim")
  Plug 'neovim/nvim-lspconfig'
  Plug 'williamboman/nvim-lsp-installer'
  Plug 'hrsh7th/cmp-nvim-lsp'
  Plug 'hrsh7th/nvim-cmp'
  Plug 'SirVer/ultisnips'
  Plug 'hrsh7th/cmp-buffer'

  Plug 'nvim-lualine/lualine.nvim'

  Plug 'tpope/vim-surround'
  Plug 'tpope/vim-repeat'
  Plug 'beauwilliams/statusline.lua'
  Plug 'folke/tokyonight.nvim', { 'branch': 'main' }
  Plug 'preservim/nerdtree'
  Plug 'beauwilliams/statusline.lua'
  Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
  Plug 'junegunn/fzf.vim'
  Plug 'airblade/vim-rooter'
  Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
endif

call plug#end()
