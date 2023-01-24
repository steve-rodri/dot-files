lvim.builtin.alpha.active = true
lvim.builtin.alpha.mode = "dashboard"
lvim.builtin.terminal.active = true
lvim.builtin.nvimtree.setup.view.side = "left"
lvim.builtin.nvimtree.setup.renderer.icons.show.git = false
lvim.builtin.dap.active = true
lvim.builtin.treesitter.highlight.enabled = true
lvim.builtin.telescope.pickers = {
  find_files = {
    theme = "dropdown"
  },
  git_files = {
    theme = "dropdown"
  },
  media_files = {
    theme = "dropdown"
  }
}

table.insert(lvim.builtin.cmp.sources, { name = "lab.quick_data", keyword_length = 4 })

lvim.transparent_window = true
lvim.format_on_save = true
lvim.log.level = "warn"
lvim.reload_config_on_save = true
lvim.leader = "space"

vim.opt.relativenumber = true
vim.opt.timeoutlen = 250

vim.opt.foldcolumn = "1"
vim.opt.foldlevel = 99
vim.opt.foldlevelstart = -1
vim.opt.foldenable = true
