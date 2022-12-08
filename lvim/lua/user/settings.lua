lvim.builtin.alpha.active = true
lvim.builtin.alpha.mode = "dashboard"
lvim.builtin.terminal.active = true
lvim.builtin.nvimtree.setup.view.side = "left"
lvim.builtin.nvimtree.setup.renderer.icons.show.git = false
lvim.builtin.dap.active = true
lvim.builtin.treesitter.highlight.enabled = true

table.insert(lvim.builtin.cmp.sources, { name = "lab.quick_data", keyword_length = 4 })

lvim.transparent_window = true
lvim.format_on_save = true
lvim.log.level = "warn"
lvim.reload_config_on_save = true
lvim.leader = "space"

vim.opt.relativenumber = true
vim.opt.timeoutlen = 250
