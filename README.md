# Custom config for neovim.    

- directory structure
- `lua/user` contains configuration for nevoim  + external plugins  
```sh 
├── init.lua
├── lua
│   └── user
│       ├── color.lua
│       ├── keymap.lua
│       ├── lualine.lua
│       ├── plugin.lua
│       └── set.lua
└── plugin
    └── packer_compiled.lua
```

## Lsp Setup   
> NOTE : only included languages that I work with most often 
- Rust 
- typescript
- C
- python 
- Java ( need some additional setup outside neovim ) 

## plugins installed 
- lualine
- packer ( plugin manager ) 
- nvim-web-devicons ( for enabling icons in lualine ) 
- telescope  ( file finder , grepper, etc ) 
- treesitter
- cheatsheet
- nvim-neoclip (**) (read the docs for better understanding of how it all works)

### colorscheme 
- tokyonight
- tender 
- nightfox
- onedark 


## Default Mappings

Mappings are fully customizable.
Many familiar mapping patterns are set up as defaults.

#### LSP mapping
#### Telescope mapping
- currently using default mapping might change in future

| Mappings       | Action                                               |
|----------------|------------------------------------------------------|
| `<C-n>/<Down>` | Next item                                            |
| `<C-p>/<Up>`   | Previous item                                        |
| `j/k`          | Next/previous (in normal mode)                       |
| `H/M/L`        | Select High/Middle/Low (in normal mode)              |
| `gg/G`         | Select the first/last item (in normal mode)          |
| `<CR>`         | Confirm selection                                    |
| `<C-x>`        | Go to file selection as a split                      |
| `<C-v>`        | Go to file selection as a vsplit                     |
| `<C-t>`        | Go to a file in a new tab                            |
| `<C-u>`        | Scroll up in preview window                          |
| `<C-d>`        | Scroll down in preview window                        |
| `<C-/>`        | Show mappings for picker actions (insert mode)       |
| `?`            | Show mappings for picker actions (normal mode)       |
| `<C-c>`        | Close telescope                                      |
| `<Esc>`        | Close telescope (in normal mode)                     |
| `<Tab>`        | Toggle selection and move to next selection          |
| `<S-Tab>`      | Toggle selection and move to prev selection          |
| `<C-q>`        | Send all items not filtered to quickfixlist (qflist) |
| `<M-q>`        | Send all selected items to qflist                    |


# Commands
- `:Cheatsheet` - gives list of all vim commands in telescope buffer
- `<Space>q`: Save and Quit ( by default it maps to `:wq` instead of `:q!` to prevent quiting without saving) 
- `zz` : force quiting without saving 

# Todo 
- [ ] Docker image for running this nvim in docker container (for preview purpose).  
