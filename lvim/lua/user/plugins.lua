lvim.plugins = {
  "lunarvim/lunar.nvim",
  "i3d/vim-jimbothemes",
  "navarasu/onedark.nvim",

  {
    "OlegGulevskyy/better-ts-errors.nvim",
    dependencies = { "MunifTanjim/nui.nvim" },
    config = {
      keymaps = {
        toggle = '<leader>kk',          -- default '<leader>dd'
        go_to_definition = '<leader>kl' -- default '<leader>dx'
      }
    }
  },
  "thePrimeagen/harpoon",
  "xiyaowong/telescope-emoji.nvim",
  "nvim-telescope/telescope-media-files.nvim",
  "nvim-telescope/telescope-dap.nvim",
  "ralismark/opsort.vim",
  "sQVe/sort.nvim",
  "tpope/vim-dadbod",
  "kristijanhusak/vim-dadbod-ui",
  "kristijanhusak/vim-dadbod-completion",
  "VonHeikemen/fine-cmdline.nvim",
  {
    "nanotee/zoxide.vim",
    dependencies = {
      "junegunn/fzf.vim"
    }
  },
  {
    "catppuccin/nvim",
    name = "catppuccin",
    priority = 1000
  },
  {
    "0x100101/lab.nvim",
    build = "cd js && npm ci",
  },
  {
    "Exafunction/codeium.nvim",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "hrsh7th/nvim-cmp"
    },
    config = function()
      require("codeium").setup({})
      table.insert(lvim.builtin.cmp.sources, { name = "codeium" })
    end
  },

  "kevinhwang91/nvim-ufo",
  dependencies = "kevinhwang91/promise-async",
  {
    "windwp/nvim-spectre",
    event = "BufRead",
    config = function()
      require("spectre").setup()
    end,
  },
  "edluffy/hologram.nvim",
  "tpope/vim-repeat",
  "jwalton512/vim-blade",

  "ntpeters/vim-better-whitespace",
  "theHamsta/nvim-dap-virtual-text",
  "christoomey/vim-tmux-navigator",
  "mxsdev/nvim-dap-vscode-js",
  "jose-elias-alvarez/typescript.nvim",
  "nvim-treesitter/playground",

  {
    "karb94/neoscroll.nvim",
    config = function()
      require('neoscroll').setup({})
    end
  },


  {
    'akinsho/flutter-tools.nvim',
    dependencies = {
      'nvim-lua/plenary.nvim',
      'stevearc/dressing.nvim', -- optional for vim.ui.select
    },
  },

  {
    "phaazon/hop.nvim",
    branch = "v2",
    config = function()
      require("hop").setup()
    end
  },

  {
    "windwp/nvim-ts-autotag",
    config = function()
      require("nvim-ts-autotag").setup()
    end
  },
  {
    "kylechui/nvim-surround",
    config = function()
      require("nvim-surround").setup()
    end
  },

  {
    "folke/trouble.nvim",
    cmd = "TroubleToggle",
  },

  {
    "folke/todo-comments.nvim",
    dependencies = "nvim-lua/plenary.nvim",
    config = function()
      require("todo-comments").setup {}
    end
  },

  {
    "folke/persistence.nvim",
    event = "BufReadPre",
    config = function()
      require("persistence").setup({
        dir = vim.fn.expand(vim.fn.stdpath "state" .. "/sessions/"),
        options = { "buffers", "curdir", "tabpages", "winsize" }
      })
    end
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
  },

  {
    "AckslD/nvim-trevJ.lua",
    config = "require('trevj').setup()",
    init = function()
      vim.keymap.set("n", "<leader>j", function()
        require("trevj").format_at_cursor()
      end)
    end
  },


  -- {
  --   "jackMort/ChatGPT.nvim",
  --   dependencies = {
  --     "MunifTanjim/nui.nvim",
  --     "nvim-lua/plenary.nvim",
  --   }
  -- },



  -- {
  --   'nvimtools/none-ls.nvim',
  --   opts = function(_, opts)
  --     local nls = require('null-ls').builtins
  --     opts.sources = {
  --       nls.formatting.biome.with({
  --         filetypes = { 'javascript', 'javascriptreact', 'json', 'jsonc', 'typescript', 'typescriptreact' },
  --         args = {
  --           'check',
  --           '--apply-unsafe',
  --           '--formatter-enabled=true',
  --           '--organize-imports-enabled=true',
  --           '--skip-errors',
  --           '$FILENAME',
  --         },
  --       }),
  --     }
  --     return opts
  --   end,
  -- },

}

-- require("chatgpt").setup({
--   api_key_cmd = "security find-generic-password -w -s 'openai' -a 'neovim'"
-- })

-- local home = vim.fn.expand("$HOME")
-- require("chatgpt").setup({
--   api_key_cmd = "gpg --decrypt " .. home .. "/.config/lvim/openai-api-key.txt.gpg"
-- })



require("telescope").load_extension("media_files")
require("telescope").load_extension("emoji")

require("hologram").setup {
  auto_display = true
}

require("ufo").setup({
  provider_selector = function()
    return { "treesitter", "indent" }
  end
})

local mason_path = vim.fn.glob(vim.fn.stdpath "data" .. "/mason/")
require("dap-vscode-js").setup {
  -- node_path = "node", -- Path of node executable. Defaults to $NODE_PATH, and then "node"
  debugger_path = mason_path .. "packages/js-debug-adapter",                                   -- Path to vscode-js-debug installation.
  -- debugger_cmd = { "js-debug-adapter" }, -- Command to use to launch the debug server. Takes precedence over `node_path` and `debugger_path`.
  adapters = { "pwa-node", "pwa-chrome", "pwa-msedge", "node-terminal", "pwa-extensionHost" }, -- which adapters to register in nvim-dap
}
