lvim.log.level = "warn"
lvim.format_on_save = true
lvim.colorscheme = "onedark"
lvim.leader = "space"

lvim.keys.normal_mode["<C-s>"] = ":w<cr>"

lvim.builtin.alpha.mode = "dashboard"
lvim.builtin.alpha.active = true

lvim.builtin.notify.active = true
lvim.builtin.terminal.active = true
lvim.builtin.nvimtree.setup.view.side = "left"
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
}

lvim.builtin.treesitter.ignore_install = { "haskell" }
lvim.builtin.treesitter.highlight.enabled = true
lvim.transparent_window = true
-- Additional Plugins
lvim.plugins = {
  { "navarasu/onedark.nvim" },
  { "GeekyAnts/native-base-vscode-snippets" },
  { "ntpeters/vim-better-whitespace" },
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

lvim.keys.normal_mode["gs"] = false
