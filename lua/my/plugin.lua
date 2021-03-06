pcall(vim.cmd, 'packadd packer.nvim')

local packer = require'packer'

packer.init{ compile_path = vim.fn.stdpath('data')..'/site/plugin/packer.vim' }

return packer.startup{
  function(use)
    -- Plugin manager
    use { 'wbthomason/packer.nvim', opt = true }

    -- Generic configs
    use 'editorconfig/editorconfig' -- Load configs from .editorconfig
    use 'wsdjeg/vim-fetch' -- Open file with file_path:line:path

    -- Icons
    use 'kyazdani42/nvim-web-devicons'

    -- Statusline
    use 'hoob3rt/lualine.nvim'

    -- IDE stuff
    use 'kassio/neoterm' -- terminal handler
    use 'neovim/nvim-lspconfig' -- LSP
    use 'kabouzeid/nvim-lspinstall' -- LSP installers
    use 'hrsh7th/nvim-compe' -- completion

    -- syntaxes
    use 'jparise/vim-graphql' -- graphql
    use 'stephenway/postcss.vim' -- postcss

    -- Fuzzy finder
    use {
      'nvim-telescope/telescope.nvim',
      requires = {
        'nvim-lua/popup.nvim',
        'nvim-lua/plenary.nvim',
        'nvim-telescope/telescope-fzy-native.nvim'
      }
    }

    use 'kyazdani42/nvim-tree.lua' -- file tree

    -- AST based plugins
    use {
      { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' },
      'nvim-treesitter/nvim-treesitter-textobjects',
      'nvim-treesitter/nvim-treesitter-refactor',
      'nvim-treesitter/playground',
      'lewis6991/spellsitter.nvim'
    }

    -- Test
    use 'janko-m/vim-test' -- general tests
    use 'kassio/vmtest' -- vim test framework

    -- Text manipulation
    -- Search/replace/text manipulation
    use 'vim-scripts/vis'
    use 'tpope/vim-repeat'
    use 'tpope/vim-abolish'

    -- Tabularize
    use 'godlygeek/tabular'

    -- Surrounding
    use 'tpope/vim-surround'
    use 'wellle/targets.vim'
    use 'kana/vim-textobj-user'

    -- Git
    use 'tpope/vim-fugitive'
    use {
      'lewis6991/gitsigns.nvim',
      requires = {
        'nvim-lua/plenary.nvim'
      }
    }

    -- Comments
    use 'tpope/vim-commentary'

    -- Snippets
    use 'sirver/ultisnips' -- requires Python

    -- Match pairs
    use 'andymass/vim-matchup'
    use 'AndrewRadev/splitjoin.vim'

    -- Colors
    -- Theme
    use { 'sonph/onehalf', rtp = 'vim/' }
    use { 'drewtempelmeyer/palenight.vim' }
    -- colorify color strings
    use 'norcalli/nvim-colorizer.lua'
    -- Better lua colors
    use 'euclidianAce/BetterLua.vim'
    -- Terminal colors within neovim
    use 'norcalli/nvim-terminal.lua'
  end
}
