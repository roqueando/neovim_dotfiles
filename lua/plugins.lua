local status, packer = pcall(require, 'packer')
if (not status) then
  print("Packer not installed")
end

vim.cmd [[packadd packer.nvim]]

packer.startup(function(use)
  use 'wbthomason/packer.nvim'
  use 'Mofiqul/vscode.nvim'
  use 'neovim/nvim-lspconfig' -- LSP
  use 'onsails/lspkind.nvim' -- VSCODE-like pictograms
  use {
    'nvim-lualine/lualine.nvim',
    requires = { 'kyazdani42/nvim-web-devicons', opt = true }
  }
  use 'hrsh7th/cmp-buffer'
  use 'hrsh7th/cmp-nvim-lsp' --nvim-cmp source to lsp
  use 'hrsh7th/nvim-cmp' -- Completion
  use 'glepnir/lspsaga.nvim' -- LSP SAGA
  use 'L3MON4D3/LuaSnip' -- snippets
  use {
    'nvim-treesitter/nvim-treesitter',
    run = ':TSUpdate'
  }
  use 'windwp/nvim-autopairs'
  use 'windwp/nvim-ts-autotag'
  use 'nvim-lua/plenary.nvim' -- utils
  use 'nvim-telescope/telescope.nvim'
  use 'nvim-telescope/telescope-file-browser.nvim'
  use {
    'nvim-tree/nvim-tree.lua',
    requires = {
      'nvim-tree/nvim-web-devicons', -- optional, for file icons
    },
  }
  use 'akinsho/bufferline.nvim'
  use 'norcalli/nvim-colorizer.lua'
  use 'lewis6991/gitsigns.nvim'
  use 'dinhhuy258/git.nvim'
  use 'jose-elias-alvarez/null-ls.nvim'
  use { 'williamboman/mason.nvim', "williamboman/mason-lspconfig.nvim" }
  use "lukas-reineke/lsp-format.nvim"
  use {
    "aserowy/tmux.nvim",
    config = function() require("tmux").setup() end
  }
  use { "akinsho/toggleterm.nvim", tag = '*', config = function()
    require("toggleterm").setup()
  end }
  use {
    "ahmedkhalf/project.nvim",
    config = function()
      require("project_nvim").setup {
        -- your configuration comes here
        -- or leave it empty to use the default settings
        -- refer to the configuration section below
      }
    end
  }
  use {
    "folke/todo-comments.nvim",
    requires = "nvim-lua/plenary.nvim",
    config = function()
      require("todo-comments").setup {
        -- your configuration comes here
        -- or leave it empty to use the default settings
        -- refer to the configuration section below
      }
    end
  }
end)


require('vscode').setup({
  transparent = false,
  italic_comments = true,
  disable_nvimtree_bg = true
})

require('nvim-autopairs').setup()
require("lsp-format").setup {}
