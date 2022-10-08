local status, packer = pcall(require, 'packer')
if (not status) then
  print("Packer is not installed.")
  return
end

cmd [[packadd packer.nvim]]

packer.startup(function(use)
  use 'wbthomason/packer.nvim'
  -- Statusline
  use {
    'hoob3rt/lualine.nvim',
    requires = { 
      'kyazdani42/nvim-web-devicons',
      opt = true
    }
  }
  use {
    'akinsho/nvim-bufferline.lua',
    tag      = "v2.*",
    requires = 'kyazdani42/nvim-web-devicons'
  }
  use 'norcalli/nvim-colorizer.lua'
  -- Automatic pairing tags
  use 'windwp/nvim-autopairs'
  use 'windwp/nvim-ts-autotag'
  -- File tree
  use {
    'kyazdani42/nvim-tree.lua',
    requires = {
      'kyazdani42/nvim-web-devicons'
    } 
  }
  -- LSP
  use 'neovim/nvim-lspconfig'
  use {
    'glepnir/lspsaga.nvim',
    branch = 'main',
  }
  -- Completions
  use 'onsails/lspkind-nvim'
  use 'hrsh7th/cmp-buffer'
  use 'hrsh7th/cmp-nvim-lsp'
  use 'L3MON4D3/LuaSnip' -- Snippets
  use 'hrsh7th/nvim-cmp'
  -- Fuzzy finder
  use {
    'nvim-telescope/telescope.nvim',
    branch = '0.1.x',
    requires = {{ 'nvim-lua/plenary.nvim' }}
  }
  use 'nvim-telescope/telescope-file-browser.nvim'
  -- Treesitter
  use {
    'nvim-treesitter/nvim-treesitter',
    run = ':TSUpdate',
  }
  -- Highlight indents
  use 'lukas-reineke/indent-blankline.nvim'
end)
