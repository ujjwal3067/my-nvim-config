
" setup link : https://jdhao.github.io/2019/01/15/markdown_edit_preview_nvim/

" Trigger configuration. Do not use <tab> if you use https://github.com/Valloric/YouCompleteMe.
let g:UltiSnipsExpandTrigger="<tab>"  " use <Tab> to trigger autocompletion
let g:UltiSnipsJumpForwardTrigger="<c-j>"
let g:UltiSnipsJumpBackwardTrigger="<c-k>"







" usesage : to deactive type Limelight! as a command in neovim
autocmd! User GoyoEnter Limelight
autocmd! User GoyoLeave Limelight!


" disable header folding
let g:vim_markdown_folding_disabled = 1

" do not use conceal feature, the implementation is not so good
let g:vim_markdown_conceal = 0

" disable math tex conceal feature
let g:tex_conceal = ""
let g:vim_markdown_math = 1

" support front matter of various format
let g:vim_markdown_frontmatter = 1  " for YAML format
let g:vim_markdown_toml_frontmatter = 1  " for TOML format
let g:vim_markdown_json_frontmatter = 1  " for JSON format


augroup pandoc_syntax
    au! BufNewFile,BufFilePre,BufRead *.md set filetype=markdown.pandoc
augroup END



let g:mkdp_auto_close = 0
nnoremap <M-m> :MarkdownPreview<CR>


" This plugin also provides a few shortcuts and commands:

"     Shortcut:
"         ]]: go to next header
"         [[: go to previous header
"     Command:
"         Toc: create a vertical window of table of contents
"         TableFormat: format the table under current cursor

" For more settings about these plugins, please consult their documentations.
