 " Config for TreeSitter plugin  
lua <<EOF

-- Neorg parser for treesitter ( NOTE : This has to be before loading treesitter )
local parser_configs = require('nvim-treesitter.parsers').get_parser_configs()

-- loading treesitter
  require'nvim-treesitter.configs'.setup {
    -- Modules and its options go here
    highlight = { enable = true },
    incremental_selection = { enable = true },
    textobjects = { enable = true },
    indent =  {enable = false}
  }

EOF
