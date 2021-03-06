
"plugins ( uses plug as plugin manager )
call plug#begin('~/.local/share/nvim/plugged')

Plug 'ryanoasis/vim-devicons'
"Plug 'vim-airline/vim-airline'
Plug 'tpope/vim-surround'
Plug 'jiangmiao/auto-pairs'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-sensible'
" Plug 'ctrlpvim/ctrlp.vim'
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}  " We recommend updating the parsers on update

"lsp
Plug 'neovim/nvim-lspconfig'
"Plug 'nvim-lua/completion-nvim'  " nvim-cmp is better 
Plug 'williamboman/nvim-lsp-installer'
Plug 'glepnir/lspsaga.nvim'

"rust
Plug 'hrsh7th/nvim-cmp' " completion framwork 
Plug 'hrsh7th/cmp-nvim-lsp' " lsp completion source for nvim-cmp
Plug 'hrsh7th/cmp-vsnip' " snippet completion source for nvim
Plug 'hrsh7th/cmp-path'
Plug 'hrsh7th/cmp-buffer'
Plug 'simrat39/rust-tools.nvim'
Plug 'hrsh7th/vim-vsnip'

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
" Plug 'vhyrro/neorg'             "Org mode but in neovim 
Plug 'jbyuki/nabla.nvim'        "Pretty latex Math  equation rendered


"Icons
Plug 'akinsho/nvim-bufferline.lua'

"smoothing scrolling 
Plug 'karb94/neoscroll.nvim'


" python indentations
" Plug 'Vimjas/vim-python-pep8-indent'

"which key
Plug 'folke/which-key.nvim'

"Pluging for calling lazygit within nvim  
Plug 'kdheepak/lazygit.nvim'

"Neovim startup screen
Plug 'goolord/alpha-nvim'

"neovim presentation mode
"Plug 'Chaitanyabsprip/present.nvim'

" lualine
Plug 'nvim-lualine/lualine.nvim'

" TODO comments
Plug 'nvim-lua/plenary.nvim'
Plug 'folke/todo-comments.nvim'


" floating terminal
Plug 'numToStr/FTerm.nvim'

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
"Plug 'lifepillar/vim-gruvbox8'
Plug 'morhetz/gruvbox'
Plug 'sainnhe/everforest'
Plug 'jpo/vim-railscasts-theme'
Plug 'projekt0n/github-nvim-theme'
Plug 'ulwlu/elly.vim'

"mix of gruvbox and tokyonight
Plug 'rebelot/kanagawa.nvim'

"base 16 colorscheme
"Plug 'base16-fork/base16-nvim'
Plug 'chriskempson/base16-vim'

"LATEX Math plugins
Plug 'gillescastel/latex-snippets'
Plug 'sirver/ultisnips'
Plug 'lervag/vimtex'
Plug 'KeitaNakamura/tex-conceal.vim'
Plug 'kyazdani42/blue-moon'

" Markdown notes taking setup
Plug 'honza/vim-snippets'
Plug 'junegunn/goyo.vim'
Plug 'junegunn/limelight.vim'
Plug 'godlygeek/tabular'
Plug 'elzr/vim-json'
Plug 'plasticboy/vim-markdown'
Plug 'vim-pandoc/vim-pandoc-syntax'
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && yarn install' }

call plug#end()


"General settings 

source $HOME/.config/nvim/todocomments.vim
source $HOME/.config/nvim/devicons.vim
source $HOME/.config/nvim/bufferline.vim
source $HOME/.config/nvim/general.vim
source $HOME/.config/nvim/telescopeConfig.vim
source $HOME/.config/nvim/generalmapping.vim
source $HOME/.config/nvim/smoothscrolling.vim
" source $HOME/.config/nvim/go.vim
source $HOME/.config/nvim/which-key.vim
source $HOME/.config/nvim/lazygit.vim
source $HOME/.config/nvim/startupScreen.vim
source $HOME/.config/nvim/lualine.vim
source $HOME/.config/nvim/treesitter.vim
source $HOME/.config/nvim/rust.vim
source $HOME/.config/nvim/lsp.vim
" source $HOME/.config/nvim/latex.vim "NOTE:  uncomment this when you learn latex's basics
"source $HOME/.config/nvim/C.vim
source $HOME/.config/nvim/Fterm.vim
source $HOME/.config/nvim/colorscheme.vim
source $HOME/.config/nvim/markdown.vim
