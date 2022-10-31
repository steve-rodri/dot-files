lvim.log.level = "warn"
lvim.format_on_save = true
lvim.colorscheme = "onedark"
lvim.leader = "space"

lvim.keys.normal_mode["<C-s>"] = ":w<cr>"
lvim.keys.normal_mode["gs"] = false
lvim.keys.normal_mode["<S-Right>"] = ":bnext"
lvim.keys.normal_mode["<S-Left>"] = ":bprevious"

lvim.builtin.alpha.active = true
lvim.builtin.alpha.mode = "dashboard"
lvim.builtin.terminal.active = true
lvim.builtin.nvimtree.setup.view.side = "left"
lvim.builtin.nvimtree.setup.renderer.icons.show.git = false
lvim.builtin.dap.active = true

-- if you don't want all the parsers change this to a table of the ones you want
lvim.builtin.treesitter.ensure_installed = {
  "bash",
  "c",
  "javascript",
  "json",
  "lua",
  "python",
  "typescript",
  "tsx",
  "css",
  "rust",
  "ruby",
  "java",
  "yaml",
  "markdown"
}


lvim.builtin.treesitter.ignore_install = { "haskell" }
lvim.builtin.treesitter.highlight.enabled = true
lvim.transparent_window = true

-- Additional Plugins
lvim.plugins = {
  { "navarasu/onedark.nvim" },
  { "GeekyAnts/native-base-vscode-snippets" },
  { "ntpeters/vim-better-whitespace" },
  { "rcarriga/nvim-dap-ui" },
  { "theHamsta/nvim-dap-virtual-text" },
  { "Pocco81/DAPInstall.nvim" },
  { "nvim-telescope/telescope-dap.nvim" },
  { "christoomey/vim-tmux-navigator" },
  { "christoomey/vim-sort-motion",
    keys = { { "n", "gs" }, { "v", "gs" } } },
  { "tpope/vim-surround",
    keys = {
      { 'n', 'ds' },
      { 'n', 'cs' },
      { 'n', 'cS' },
      { 'n', 'ys' },
      { 'n', 'yS' },
      { 'n', 'yss' },
      { 'n', 'ySs' },
      { 'n', 'ySS' },
      { 'x', 'S' },
      { 'x', 'gS' },
      { 'i', '<C-S>' },
      { 'i', '<C-G>s' },
      { 'i', '<C-G>S' }
    }
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
  },
}

require("onedark").setup {
  style = "deep",
  transparent = true
}

-- local dap = require('dap')

-- dap.adapters.node2 = {
--   type = 'executable',
--   command = 'node',
--   args = { os.getenv('HOME') .. '/dev/microsoft/vscode-node-debug2/out/src/nodeDebug.js' },
-- }

-- dap.configurations.javascript = {
--   {
--     name = 'Launch',
--     type = 'node2',
--     request = 'launch',
--     program = '${file}',
--     cwd = vim.fn.getcwd(),
--     sourceMaps = true,
--     protocol = 'inspector',
--     console = 'integratedTerminal',
--   },
--   {
--     -- For this to work you need to make sure the node process is started with the `--inspect` flag.
--     name = 'Attach to process',
--     type = 'node2',
--     request = 'attach',
--     processId = require 'dap.utils'.pick_process,
--   },
-- }

-- dap.configurations.typescript = {
--   {
--     name = 'Launch',
--     type = 'node2',
--     request = 'launch',
--     program = '${file}',
--     cwd = vim.fn.getcwd(),
--     sourceMaps = true,
--     protocol = 'inspector',
--     console = 'integratedTerminal',
--   },
--   {
--     -- For this to work you need to make sure the node process is started with the `--inspect` flag.
--     name = 'Attach to process',
--     type = 'node2',
--     request = 'attach',
--     processId = require 'dap.utils'.pick_process,
--   },
-- }

-- dap.adapters.chrome = {
--   type = "executable",
--   command = "node",
--   args = { os.getenv("HOME") .. "~/dev/microsoft/vscode-chrome-debug/out/src/chromeDebug.js" }
-- }

-- dap.configurations.javascriptreact = { -- change this to javascript if needed
--   {
--     name = "Chrome",
--     type = "chrome",
--     request = "attach",
--     program = "${file}",
--     cwd = vim.fn.getcwd(),
--     sourceMaps = true,
--     protocol = "inspector",
--     port = 9222,
--     webRoot = "${workspaceFolder}"
--   },
--   {
--     name = "React Native",
--     type = "node2",
--     request = "attach",
--     program = "${file}",
--     cwd = vim.fn.getcwd(),
--     sourceMaps = true,
--     protocol = "inspector",
--     console = "integratedTerminal",
--     port = 35000,
--   }
-- }

-- dap.configurations.typescriptreact = { -- change to typescript if needed
--   {
--     name = "Chrome",
--     type = "chrome",
--     request = "attach",
--     program = "${file}",
--     cwd = vim.fn.getcwd(),
--     sourceMaps = true,
--     protocol = "inspector",
--     port = 9222,
--     webRoot = "${workspaceFolder}"
--   },
--   {
--     name = "React Native",
--     type = "node2",
--     request = "attach",
--     program = "${file}",
--     cwd = vim.fn.getcwd(),
--     sourceMaps = true,
--     protocol = "inspector",
--     console = "integratedTerminal",
--     port = 35000,
--   }
-- }

-- require('dap.ext.vscode').load_launchjs(nil, {})
