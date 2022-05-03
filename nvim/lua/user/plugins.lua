local fn = vim.fn

-- Automatically install packer
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

-- Install your plugins here
return packer.startup(function(use)
  --  Packer
  use "wbthomason/packer.nvim" -- Have packer manage itself

  -- Editing Text
  use "numToStr/Comment.nvim" -- Commenting
  use "phaazon/hop.nvim" -- Hop to any character
  use "Mephistophiles/surround.nvim"
  use "tpope/vim-repeat" -- Enhances the "." command
  use "folke/todo-comments.nvim" -- Highlight and search fro TODO, HACK, BUG
  use "christoomey/vim-sort-motion" -- Sort motion - sort based on motion or text object
  use "christoomey/vim-titlecase" -- Titlecase - operator for titlecasing over a motion or text object
  use "ntpeters/vim-better-whitespace" -- Highlight trailing whitespace and provide command to kill
  -- use "unblevable/quick-scope"
  -- use "andymass/vim-matchup"

  -- Text Objects
  use 'kana/vim-textobj-user'
  use 'kana/vim-textobj-line'
  use 'kana/vim-textobj-indent'
  use 'kana/vim-textobj-entire'
  use 'beloglazov/vim-textobj-quotes'
  use 'christoomey/vim-textobj-codeblock'

  -- Games
  use 'ThePrimeagen/vim-be-good'

  -- Visual Tools
  -- use "goolord/alpha-nvim" -- Dashboard
  use "mhinz/vim-startify" -- Dashboard
  use "rcarriga/nvim-notify" -- Notifications
  use "akinsho/toggleterm.nvim" -- Terminal
  use "nvim-lualine/lualine.nvim" -- Status Line
  use "kyazdani42/nvim-tree.lua" -- Tree Explorer
  use "tamago324/lir.nvim" -- Tree Explorer
  use "nvim-lua/popup.nvim" -- An implementation of the Popup API from vim in Neovim
  use "akinsho/bufferline.nvim" -- Top Tabs
  use "folke/which-key.nvim" -- Which key
  use "folke/zen-mode.nvim" -- Zen Mode
  use "kyazdani42/nvim-web-devicons" -- Icons
  use "nacro90/numb.nvim" -- Peeking the Line while entering a command :{number}
  use "norcalli/nvim-colorizer.lua" -- Color highlighter
  use "windwp/nvim-autopairs" -- Autopairs, integrates with both cmp and treesitter
  -- use "lukas-reineke/indent-blankline.nvim" -- Adds lines to indents
  use "nyngwang/NeoZoom.lua" -- Zoom with <CR>
  use { "iamcco/markdown-preview.nvim", run = "cd app && yarn", ft = "markdown" }
  use "matbme/JABS.nvim"

  -- Enhancements
  use "lewis6991/impatient.nvim"
  use "moll/vim-bbye" -- Closing Buffers
  use "karb94/neoscroll.nvim" -- Smooth Scrolling
  use "kevinhwang91/nvim-bqf" --  Better Quick Fix
  use "ThePrimeagen/harpoon" -- Better File Marking and Navigation
  use "SmiteshP/nvim-gps" -- Status Line component that shows context of the current cursor position
  use "antoinemadec/FixCursorHold.nvim" -- This is needed to fix lsp doc highlight
  use "nvim-lua/plenary.nvim" -- Useful lua functions used ny lots of plugins
  use "windwp/nvim-spectre" -- Project Search and Replace
  use { "michaelb/sniprun", run = "bash ./install.sh" } -- Run Snippets of a File
  -- use "ahmedkhalf/project.nvim" -- Project management

  -- Colorschemes
  use "folke/tokyonight.nvim"
  use "lunarvim/colorschemes" -- A bunch of colorschemes you can try out
  use "lunarvim/darkplus.nvim"
  use "rose-pine/neovim"
  use "navarasu/onedark.nvim"

  -- CMP
  use "hrsh7th/nvim-cmp" -- The completion plugin
  use "hrsh7th/cmp-buffer" -- buffer completions
  use "hrsh7th/cmp-path" -- path completions
  use "hrsh7th/cmp-cmdline" -- cmdline completions
  use "saadparwaiz1/cmp_luasnip" -- snippet completions
  use "hrsh7th/cmp-nvim-lsp"
  use "hrsh7th/cmp-emoji"
  use "hrsh7th/cmp-nvim-lua"
  use {
    "tzachar/cmp-tabnine",
    config = function()
      local tabnine = require "cmp_tabnine.config"
      tabnine:setup {
        max_lines = 1000,
        max_num_results = 20,
        sort = true,
        run_on_every_keystroke = true,
        snippet_placeholder = "..",
        ignored_file_types = { -- default is not to ignore
          -- uncomment to ignore in lua:
          -- lua = true
        },
      }
    end,

    run = "./install.sh",
    requires = "hrsh7th/nvim-cmp",
  }

  -- LSP
  use "neovim/nvim-lspconfig" -- enable LSP
  use "williamboman/nvim-lsp-installer" -- simple to use language server installer
  use "tamago324/nlsp-settings.nvim" -- language server settings defined in json for
  use "jose-elias-alvarez/null-ls.nvim" -- for formatters and linters
  use "filipdutescu/renamer.nvim"
  use "simrat39/symbols-outline.nvim"
  use "ray-x/lsp_signature.nvim"
  use "b0o/SchemaStore.nvim"
  use {
    "folke/trouble.nvim",
    cmd = "TroubleToggle",
  }
  use "github/copilot.vim"
  use "RRethy/vim-illuminate"

  -- Java
  use "mfussenegger/nvim-jdtls"

  -- Snippets
  use "L3MON4D3/LuaSnip" --snippet engine
  use "rafamadriz/friendly-snippets" -- a bunch of snippets to use

  -- Telescope
  use "nvim-telescope/telescope.nvim"
  use "tom-anders/telescope-vim-bookmarks.nvim"
  use "nvim-telescope/telescope-media-files.nvim"
  use "nvim-telescope/telescope-ui-select.nvim"
  use "nvim-telescope/telescope-file-browser.nvim"
  use { "nvim-telescope/telescope-fzf-native.nvim", run = "make"}

  -- Treesitter
  use { "nvim-treesitter/nvim-treesitter", run = ":TSUpdate" }
  use "JoosepAlviste/nvim-ts-context-commentstring"
  use "p00f/nvim-ts-rainbow"
  -- use {'christianchiarulli/nvim-ts-rainbow'}
  use "nvim-treesitter/playground"
  use "windwp/nvim-ts-autotag"
  use "romgrk/nvim-treesitter-context"
  use "mizlan/iswap.nvim"

  -- Git
  use "lewis6991/gitsigns.nvim"
  use "f-person/git-blame.nvim"
  use "ruifm/gitlinker.nvim"
  use "mattn/vim-gist"
  use "mattn/webapi-vim"
  use "https://github.com/rhysd/conflict-marker.vim"

  -- DAP
  use "mfussenegger/nvim-dap"
  use "theHamsta/nvim-dap-virtual-text"
  use "rcarriga/nvim-dap-ui"
  use "Pocco81/DAPInstall.nvim"

  -- Automatically set up your configuration after cloning packer.nvim
  -- Put this at the end after all plugins
  if PACKER_BOOTSTRAP then
    require("packer").sync()
  end
end)
