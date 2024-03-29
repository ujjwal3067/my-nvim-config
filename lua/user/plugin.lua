-- packer pluging manager
-- NOTE : use { <plugin name> , commit =<commit hash>} will make sure that whenever you update or sync packer only specific commit is used 
-- why do we need this ? 
    -- This technique is to replicate version set in Amazon build system. ( it makes sure we have snapshot of plugins ,at specific commit, that are working together
    -- This prevents breaking changes when we include new plugin in the system.
    -- tempalate : use {'', commit=""}

-- This file can be loaded by calling 'lua require('plugins') from your init.vim
-- only required if you have packer configuration as 'opt'


-- Automatically install packer ( good for porting neovim to different system)
local fn = vim.fn
local install_path = fn.stdpath "data" .. "/site/pack/packer/start/packer.nvim"
if fn.empty(fn.glob(install_path)) > 0 then
  PACKER_BOOTSTRAP = fn.system {
    "git",
    "clone",
    "--depth",
    "1",
    "https://github.com/wbthomason/packer.nvim",
    install_path,
  }
  print "Installing packer close and reopen Neovim..."
  vim.cmd [[packadd packer.nvim]]
end


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
    use { 'nvim-treesitter/nvim-treesitter'} -- treesitter for some goddies in syntax + other feature (excellent parser generator tool)  


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
    use {'lukas-reineke/indent-blankline.nvim', commit="c15bbe9f23d88b5c0b4ca45a446e01a0a3913707", lock=true} -- for indent line
    use {'ahmedkhalf/project.nvim', commit='090bb11ee7eb76ebb9d0be1c6060eac4f69a240f', lock=true} -- auto detect the root directory  
    use {'ggandor/leap.nvim', commit='dda4ed60f90ae889f459887449a43c4de29609bd', lock=true} -- better keyboard jumps in vim  

    -- telescope plugin
    use {'nvim-telescope/telescope-fzf-native.nvim',commit ="6791f74e9f08a9412c43dcba805ecf2f8888bdde",  run = 'make', lock=true}
    use {'AckslD/nvim-neoclip.lua', commit="74af02e289b3ea465bc8a4d7b9b83adc4e4b8c06", lock=true}

    -- git 
    use {'lewis6991/gitsigns.nvim', commit="1e107c91c0c5e3ae72c37df8ffdd50f87fb3ebfa", lock=true} -- Super fast git decorations implemented purely in lua/teal.
    use {'kdheepak/lazygit.nvim', commit="9c73fd69a4c1cb3b3fc35b741ac968e331642600", lock=true}   -- plugin for calling lazygit from neovim.


    -- lsp 
    use {'neovim/nvim-lspconfig', commit="cedfda66a6cdfc32b370b2d4bd5b5c3c9cb4ab38", lock=true} -- for basic lsp config for all langauges
    use {'hrsh7th/nvim-cmp', commit="058100d81316239f3874064064f0f0c5d43c2103",lock=true}       -- for autocompletion
    use {'williamboman/nvim-lsp-installer', commit="ae913cb4fd62d7a84fb1582e11f2e15b4d597123", lock=true} -- pluging used for installing language servers.
    use {'hrsh7th/cmp-buffer', commit="3022dbc9166796b644a841a02de8dd1cc1d311fa", lock=true} -- nvim-cmp source for buffer words
    use {'hrsh7th/cmp-path', commit="447c87cdd6e6d6a1d2488b1d43108bfa217f56e1",lock=true} -- nvim-cmp source for path 
    use {'hrsh7th/cmp-nvim-lsp', commit="affe808a5c56b71630f17aa7c38e15c59fd648a8",lock=true} -- nvim-cmp source for neovim builtin lsp 
    use {'rafamadriz/friendly-snippets', commit="6227548c97d7bd7d2f5f0897814c16649fcce368", lock=true} --set of preconfigured snippets for different languages
    use {'RRethy/vim-illuminate', commit="9179f9cb3d7a97c5724d215c671b6eb578e63520", lock=true} -- pluging for automatically highlighting other uses of the word under the cursor using either LSP, treeSitter or regex matching
    use {'jose-elias-alvarez/null-ls.nvim', commit="de751688c991216f0d17ced7d5076e0c37fa383f", lock=true} -- for diagnostic , code actions and more via lua. 

    -- snippets
    use { "L3MON4D3/LuaSnip", commit="18439321965ed6deb849b9a438bd95a16184430d" ,lock=true} --snippet engine


    -- startup  
    use {'lewis6991/impatient.nvim', commit="b842e16ecc1a700f62adb9802f8355b99b52a5a6", lock=true} -- for improving startup time for neovim
    use {'goolord/alpha-nvim', commit="1e12c492fdd09a812f960e83048af6d2d18b9b6b", lock=true} -- fast and fully programmable startup greeter 

    -- colorscheme
    use {'joshdick/onedark.vim', commit="1fe54f212f09a03c2b5e277f0fe5b7b9d0b0a4ed", lock=true}
    use {'folke/tokyonight.nvim', commit="8223c970677e4d88c9b6b6d81bda23daf11062bb",lock=true}
    use {'jacoborus/tender.vim', commit="7746453a045eaa97dc413a7209268345f33f3243", lock=true}
    use {'EdenEast/nightfox.nvim', commit="e2f961859cbfb2ba38147dc59fdd2314992c8b62", lock=true}
    use {'cocopon/iceberg.vim', commit ="61efc9c61dec54076c093af0cff304e30b0c3a07", lock=true}
    -- use {'rebelot/kanagawa.nvim', commit="ec3b133414388b0bfea3f33ca0bff10538aef8ac", lock=true}
    use {'rebelot/kanagawa.nvim'}
    use {'projekt0n/github-nvim-theme', commit="b3f15193d1733cc4e9c9fe65fbfec329af4bdc2a", lock=true}
    use {'lifepillar/vim-solarized8', commit= "9f9b7951975012ce51766356c7c28ba56294f9e8", lock=true}
    use {'RRethy/nvim-base16', commit="853faf64ea80e65950838d2b35466b1eb6036cef", lock=true}

      -- Automatically set up your configuration after cloning packer.nvim
      -- Put this at the end after all plugins
      if PACKER_BOOTSTRAP then
        require("packer").sync()
      end

end)
