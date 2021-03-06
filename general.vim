

"Remaping leader
let g:mapleader = " "
nmap<leader>w :w!<cr>
nmap<leader>q :q<cr>

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



"NERDtree config
nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <leader>t :NERDTree<CR>
nnoremap <leader>,, :NERDTreeToggle<CR>

" this prevents the trailing white space being flagged as errors in go files  
let g:go_highlight_trailing_whitespace_error=0



