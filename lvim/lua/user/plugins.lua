lvim.plugins = {
  { "navarasu/onedark.nvim" },
  { "GeekyAnts/native-base-vscode-snippets" },
  { "ntpeters/vim-better-whitespace" },
  { "theHamsta/nvim-dap-virtual-text" },
  { "nvim-telescope/telescope-dap.nvim" },
  { "christoomey/vim-tmux-navigator" },
  { "ralismark/opsort.vim" },
  { "tpope/vim-repeat" },
  {
    "windwp/nvim-spectre",
    event = "BufRead",
    config = function()
      require("spectre").setup()
    end,
  },
  { "kylechui/nvim-surround",
    config = function()
      require("nvim-surround").setup()
    end
  },
  { "christianchiarulli/harpoon" },
  {
    "folke/trouble.nvim",
    cmd = "TroubleToggle",
  },
  {
    "norcalli/nvim-colorizer.lua",
    config = function()
      require("colorizer").setup({ "*" }, {
        RGB = true, -- #RGB hex codes
        RRGGBB = true, -- #RRGGBB hex codes
        RRGGBBAA = true, -- #RRGGBBAA hex codes
        rgb_fn = true, -- CSS rgb() and rgba() functions
        hsl_fn = true, -- CSS hsl() and hsla() functions
        css = true, -- Enable all CSS features: rgb_fn, hsl_fn, names, RGB, RRGGBB
        css_fn = true, -- Enable all CSS *functions*: rgb_fn, hsl_fn
      })
    end,
  }
}

require("onedark").setup {
  style = "deep",
  transparent = true
}
lvim.colorscheme = "onedark"
