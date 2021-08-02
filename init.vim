
"plugins ( uses plug as plugin manager )
call plug#begin('~/.local/share/nvim/plugged')

Plug 'ryanoasis/vim-devicons'
Plug 'vim-airline/vim-airline'
Plug 'tpope/vim-surround'
Plug 'jiangmiao/auto-pairs'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-sensible'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}  " We recommend updating the parsers on update

"lsp
Plug 'fatih/vim-go'
Plug 'neovim/nvim-lspconfig'
Plug 'nvim-lua/completion-nvim'
Plug 'glepnir/lspsaga.nvim'

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

"Icons

Plug 'akinsho/nvim-bufferline.lua'

" COLOR SCHEMES
Plug 'nanotech/jellybeans.vim'
Plug 'arzg/vim-colors-xcode'
Plug 'mhartington/oceanic-next'
Plug 'plan9-for-vimspace/acme-colors'
Plug 'andreypopp/vim-colors-plain'
Plug 'cocopon/iceberg.vim'
Plug 'altercation/vim-colors-solarized'
Plug 'arcticicestudio/nord-vim'
Plug 'ayu-theme/ayu-vim' 

call plug#end()

"General settings 

source $HOME/.config/nvim/devicons.vim
source $HOME/.config/nvim/treesitter.vim
source $HOME/.config/nvim/general.vim
source $HOME/.config/nvim/bufferline.vim
" source $HOME/.config/nvim/telescope.nvim.vim
source $HOME/.config/nvim/lsp.vim



