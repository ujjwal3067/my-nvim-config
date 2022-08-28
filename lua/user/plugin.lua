-- packer pluging manager
-- NOTE : use { <plugin name> , commit =<commit hash>} will make sure that whenever you update or sync packer only specific commit is used 
-- why do we need this ? 
    -- This technique is to replicate version set in Amazon build system. ( it makes sure we have snapshot of plugins ,at specific commit, that are working together
    -- This prevents breaking changes when we include new plugin in the system.
    -- tempalate : use {'', commit=""}

-- This file can be loaded by calling 'lua require('plugins') from your init.vim
-- only required if you have packer configuration as 'opt'

--vim.cmd [[ packadd packer.nvim ]]

-- Autocommand that reloads neovim whenever you save the plugins.lua file
vim.cmd [[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerSync
  augroup end
]]

-- Use a protected call so we don't error out on first use
local status_ok, packer = pcall(require, "packer")
if not status_ok then
  return
end

-- Have packer use a popup window
packer.init {
  display = {
    open_fn = function()
      return require("packer.util").float { border = "rounded" }
    end,
  },
}


return packer.startup(function(use)
    -- Packer can manage itself
    use {'wbthomason/packer.nvim' , commit = "3a9f9801f683946b9f1047d8f4bf9946c29e927d", lock=true} 
   
    -- tools line
    use {'nvim-lualine/lualine.nvim' , commit = "3cf45404d4ab5e3b5da283877f57b676cb78d41d", lock=true} -- better status line 
    use {'nvim-lua/plenary.nvim', commit="a3dafaa937921a4eb2ae65820c3479ab561e9ba3", lock=true} -- common functions that other plugins uses.
    use {'nvim-telescope/telescope.nvim', commit = "b923665e64380e97294af09117e50266c20c71c7", lock=true} -- file finder, grepper etc. 
    use { 'nvim-treesitter/nvim-treesitter', commit ="8a1ff3cf6a43cff98abdf572d2605407306e58ba",lock=true} -- treesitter for some goddies in syntax + other feature (excellent parser generator tool)  
    

    -- better commenting
    use {'numToStr/Comment.nvim', commit="80e7746e42fa685077a7941e9022308c7ad6adf8", lock=true}

    -- better editing
    use {'windwp/nvim-autopairs', commit ="0a18e10a0c3fde190437567e40557dcdbbc89ea1", lock=true}

    -- extra help plugins
    use {'nvim-lua/popup.nvim', commit="b7404d35d5d3548a82149238289fa71f7f6de4ac",lock=true} -- need for telescope
    use {'sudormrfbin/cheatsheet.nvim', commit='9716f9aaa94dd1fd6ce59b5aae0e5f25e2a463ef',lock=true} -- usage :CheatSheet  ( displays all the commands + info in telescope buffer ).  
    use {'akinsho/bufferline.nvim',tag="v2.*", commit="fb7b17362eb6eedc57c37bdfd364f8e7d8149e31",lock=true} -- clipboard manager plugin
    use { 'kyazdani42/nvim-web-devicons', commit = "2d02a56189e2bde11edd4712fea16f08a6656944",lock=true} -- for icons in statusline  ( needed by lualine ) 
    use {'kyazdani42/nvim-tree.lua', commit="ce5d0a6b7ddfec622554943d2ebcc739b1d74567", lock=true} -- tree file explorer

    -- telescope plugin
    use {'nvim-telescope/telescope-fzf-native.nvim',commit ="6791f74e9f08a9412c43dcba805ecf2f8888bdde",  run = 'make', lock=true}
    use {'AckslD/nvim-neoclip.lua', commit="74af02e289b3ea465bc8a4d7b9b83adc4e4b8c06", lock=true}

    -- git 
    use {'lewis6991/gitsigns.nvim', commit="1e107c91c0c5e3ae72c37df8ffdd50f87fb3ebfa", lock=true} -- Super fast git decorations implemented purely in lua/teal.
    use {'kdheepak/lazygit.nvim', commit="9c73fd69a4c1cb3b3fc35b741ac968e331642600", lock=true}   -- plugin for calling lazygit from neovim.


    -- lsp 
    use {'neovim/nvim-lspconfig', commit="cedfda66a6cdfc32b370b2d4bd5b5c3c9cb4ab38", lock=true} -- for basic lsp config for all langauges
    use {'hrsh7th/nvim-cmp', commit="058100d81316239f3874064064f0f0c5d43c2103",lock=true}       -- for autocompletion


    -- startup  
    use {'lewis6991/impatient.nvim', commit="b842e16ecc1a700f62adb9802f8355b99b52a5a6", lock=true} -- for improving startup time for neovim
    use {'goolord/alpha-nvim', commit="1e12c492fdd09a812f960e83048af6d2d18b9b6b", lock=true} -- fast and fully programmable startup greeter 

    -- colorscheme
    use {'joshdick/onedark.vim', commit="1fe54f212f09a03c2b5e277f0fe5b7b9d0b0a4ed", lock=true} 
    use {'folke/tokyonight.nvim', commit="8223c970677e4d88c9b6b6d81bda23daf11062bb",lock=true} 
    use {'jacoborus/tender.vim', commit="7746453a045eaa97dc413a7209268345f33f3243", lock=true} 
    use {'EdenEast/nightfox.nvim', commit="e2f961859cbfb2ba38147dc59fdd2314992c8b62", lock=true} 
    use {'cocopon/iceberg.vim', commit ="61efc9c61dec54076c093af0cff304e30b0c3a07", lock=true}
    use {'rebelot/kanagawa.nvim', commit="ec3b133414388b0bfea3f33ca0bff10538aef8ac", lock=true}
    use {'projekt0n/github-nvim-theme', commit="b3f15193d1733cc4e9c9fe65fbfec329af4bdc2a", lock=true}
    use {'lifepillar/vim-solarized8', commit= "9f9b7951975012ce51766356c7c28ba56294f9e8", lock=true}
    
end)

