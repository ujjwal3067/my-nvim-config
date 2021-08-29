

"Remaping leader
let g:mapleader = " "
" nmap<leader>w :w!<cr>
" nmap<leader>q :q<cr>

" nnoremap <C-h> <C-w>h
" nnoremap <C-j> <C-w>j
" nnoremap <C-k> <C-w>k
" nnoremap <C-l> <C-w>l

"identation

inoremap jk <Esc>
set number
set relativenumber
set cursorline

" indentation
set expandtab
" set autoindent
set tabstop=4
set softtabstop=4
" set smarttab
set shiftwidth=4
set ai
set si

" no errors bells
set noerrorbells
set novisualbell
"mouse support
set mouse=a


"search related
set hlsearch  " show search result as you type"
set showmatch 					" show matching brackets
set ignorecase
set incsearch
set smartcase

"performance
set lazyredraw  "don't update screen during macro and script execution"

"text rendering
set display+=lastline
set encoding=UTF-8

set linebreak
set scrolloff=5
set sidescrolloff=5
syntax enable
set wrap

"user interface

set laststatus=2 " Always display the status bar.
set ruler " Always show cursor position.
set wildmenu
set title " set the windows title, relecting the file currently being edited"
set confirm

set backupdir=~/.cache/vim "directory to store backup files "
set dir=~/.cache/vim " directory to store swap files"

set formatoptions+=j  "Delete comment characters when joining lines."
set hidden " Hide files in the background instead of closing them.
set history=1000
set nomodeline " Ignore file’s mode lines; use vimrc configurations instead.
set noswapfile " Disable swap files.

" use macos clipboard to copy and paste

set clipboard+=unnamedplus

"Highlighting yanking
augroup highlight_yank
    autocmd!
    au TextYankPost * silent! lua vim.highlight.on_yank{higroup="IncSearch", timeout=700}
augroup END

" colorSchemes

" if (has("termguicolors"))
"  set termguicolors
" endif

let &t_Co=256
set termguicolors     " enable true colors support
" set background=light
" colorscheme solarized8_high

" let ayucolor="dark"   " for dark version of theme
"  colorscheme ayu

" colorscheme xcodedarkhc

set background=dark
" colorscheme iceberg 
"
"
" let g:material_terminal_italics = 1
" let g:material_theme_style = 'ocean'
" " let g:material_theme_style = 'darker'
" colorscheme material
" let g:lightline = { 'colorscheme': 'material_vim' }
" let g:airline_theme = 'material'

colorscheme gruvbox

"NERDtree config
nnoremap <leader>n :NERDTreeFocus<CR>
" nnoremap <C-n> :NERDTree<CR>
nnoremap <leader>t :NERDTree<CR>
nnoremap <leader>,, :NERDTreeToggle<CR>
" nnoremap <C-t> :NERDTreeToggle<CR>
" nnoremap <C-f> :NERDTreeFind<CR>





