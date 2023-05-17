lvim.plugins = {
  "navarasu/onedark.nvim",
  "ntpeters/vim-better-whitespace",
  "theHamsta/nvim-dap-virtual-text",
  "nvim-telescope/telescope-dap.nvim",
  "nvim-telescope/telescope-media-files.nvim",
  "xiyaowong/telescope-emoji.nvim",
  "christoomey/vim-tmux-navigator",
  "ralismark/opsort.vim",
  "tpope/vim-repeat",
  "mxsdev/nvim-dap-vscode-js",
  "christianchiarulli/harpoon",
  "edluffy/hologram.nvim",
  {
    'sQVe/sort.nvim',
    -- Optional setup for overriding defaults.
    config = function()
      require("sort").setup({
        -- Input configuration here.
        -- Refer to the configuration section below for options.
      })
    end
  },
  { 'kevinhwang91/nvim-ufo', requires = 'kevinhwang91/promise-async' },
  {
    "windwp/nvim-spectre",
    event = "BufRead",
    config = function()
      require("spectre").setup()
    end,
  },
  {
    "kylechui/nvim-surround",
    config = function()
      require("nvim-surround").setup()
    end
  },
  {
    "0x100101/lab.nvim",
    run = "cd js && npm ci",
  },
  {
    "folke/trouble.nvim",
    cmd = "TroubleToggle",
  },
  {
    "norcalli/nvim-colorizer.lua",
    config = function()
      require("colorizer").setup({ "*" }, {
        RGB = true,      -- #RGB hex codes
        RRGGBB = true,   -- #RRGGBB hex codes
        RRGGBBAA = true, -- #RRGGBBAA hex codes
        rgb_fn = true,   -- CSS rgb() and rgba() functions
        hsl_fn = true,   -- CSS hsl() and hsla() functions
        css = true,      -- Enable all CSS features: rgb_fn, hsl_fn, names, RGB, RRGGBB
        css_fn = true,   -- Enable all CSS *functions*: rgb_fn, hsl_fn
      })
    end,
  }
}

require("onedark").setup {
  style = "deep",
  transparent = true
}
lvim.colorscheme = "onedark"

require("hologram").setup {
  auto_display = true
}

require('ufo').setup({
  provider_selector = function()
    return { 'treesitter', 'indent' }
  end
})

require('telescope').load_extension('media_files')
require('telescope').load_extension('emoji')

local mason_path = vim.fn.glob(vim.fn.stdpath "data" .. "/mason/")
require("dap-vscode-js").setup {
  -- node_path = "node", -- Path of node executable. Defaults to $NODE_PATH, and then "node"
  debugger_path = mason_path .. "packages/js-debug-adapter",                                   -- Path to vscode-js-debug installation.
  -- debugger_cmd = { "js-debug-adapter" }, -- Command to use to launch the debug server. Takes precedence over `node_path` and `debugger_path`.
  adapters = { "pwa-node", "pwa-chrome", "pwa-msedge", "node-terminal", "pwa-extensionHost" }, -- which adapters to register in nvim-dap
}
