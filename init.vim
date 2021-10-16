
"plugins ( uses plug as plugin manager )
call plug#begin('~/.local/share/nvim/plugged')

Plug 'ryanoasis/vim-devicons'
Plug 'vim-airline/vim-airline'
Plug 'tpope/vim-surround'
Plug 'jiangmiao/auto-pairs'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-sensible'
" Plug 'ctrlpvim/ctrlp.vim'
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}  " We recommend updating the parsers on update

"lsp
" Plug 'fatih/vim-go'
Plug 'neovim/nvim-lspconfig'
Plug 'nvim-lua/completion-nvim'
Plug 'glepnir/lspsaga.nvim'
"Plug 'ray-x/go.nvim' " good plugin (use it when you can figure out why autocomplete not working)

"dp mode (debugger mode)

Plug 'mfussenegger/nvim-dap'
Plug 'rcarriga/nvim-dap-ui'
Plug 'theHamsta/nvim-dap-virtual-text'

Plug 'lukas-reineke/indent-blankline.nvim'

"telescope
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'

"file explore
Plug 'preservim/nerdtree'

"git
Plug 'tpope/vim-fugitive'
Plug 'mhinz/vim-signify'
Plug 'tpope/vim-rhubarb'
Plug 'junegunn/gv.vim'

"Org mode ::neorg
Plug 'vhyrro/neorg'             "Org mode but in neovim 
Plug 'jbyuki/nabla.nvim'        "Pretty latex Math  equation rendered


"Icons
Plug 'akinsho/nvim-bufferline.lua'

"smoothing scrolling 
Plug 'karb94/neoscroll.nvim'


" python indentations
" Plug 'Vimjas/vim-python-pep8-indent'



" COLOR SCHEMES
Plug 'nanotech/jellybeans.vim'
Plug 'arzg/vim-colors-xcode'
Plug 'mhartington/oceanic-next'
Plug 'plan9-for-vimspace/acme-colors'
Plug 'andreypopp/vim-colors-plain'
Plug 'cocopon/iceberg.vim'
" Plug 'altercation/vim-colors-solarized'
Plug  'lifepillar/vim-solarized8'
Plug 'arcticicestudio/nord-vim'
Plug 'ayu-theme/ayu-vim' 
Plug 'sonph/onehalf'
Plug 'kaicataldo/material.vim', { 'branch': 'main' }
Plug 'xero/blaquemagick.vim'
Plug 'znake/znake-vim'
Plug 'whatyouhide/vim-gotham'
Plug 'mangeshrex/uwu.vim' 
" Plug 'lifepillar/vim-gruvbox8'
" Plug 'morhetz/gruvbox'
Plug 'sainnhe/gruvbox-material'
Plug 'sainnhe/everforest'
Plug 'jpo/vim-railscasts-theme'
Plug 'projekt0n/github-nvim-theme'


call plug#end()

"General settings 

source $HOME/.config/nvim/devicons.vim
source $HOME/.config/nvim/treesitter.vim
source $HOME/.config/nvim/bufferline.vim
source $HOME/.config/nvim/general.vim
source $HOME/.config/nvim/telescopeConfig.vim
source $HOME/.config/nvim/generalmapping.vim
source $HOME/.config/nvim/lsp.vim
source $HOME/.config/nvim/smoothscrolling.vim
" source $HOME/.config/nvim/go.vim
source $HOME/.config/nvim/colorscheme.vim
