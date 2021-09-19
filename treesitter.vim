 " Config for TreeSitter plugin  
lua <<EOF


-- loading treesitter
  require'nvim-treesitter.configs'.setup {
    -- Modules and its options go here
    highlight = { enable = true },
    incremental_selection = { enable = true },
    textobjects = { enable = true },
    indent =  {enable = true}
  }

EOF
