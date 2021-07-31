
set termguicolors
lua << EOF
require("bufferline").setup{}
EOF


" These commands will navigate through buffers in order regardless of which mode you are using
" e.g. if you change the order of buffers :bnext and :bprevious will not respect the custom ordering
nnoremap <silent><Tab>] :BufferLineCycleNext<CR>
nnoremap <silent><Tab>[ :BufferLineCyclePrev<CR>




