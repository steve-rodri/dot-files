local kind = require("user.kind")
local wk = lvim.builtin.which_key
local buf = lvim.lsp.buffer_mappings

lvim.keys.normal_mode["<S-l>"] = ":bnext<cr>"
lvim.keys.normal_mode["<S-h>"] = ":bprevious<cr>"
lvim.keys.normal_mode["<M-j>"] = false
lvim.keys.insert_mode["<M-j>"] = false
lvim.keys.visual_mode["<M-j>"] = false
lvim.keys.normal_mode["<M-k>"] = false
lvim.keys.insert_mode["<M-k>"] = false

lvim.keys.normal_mode["<leader>as"] = "<cmd>Lab code stop<cr>"
lvim.keys.normal_mode["<leader>ar"] = "<cmd>Lab code run<cr>"
lvim.keys.normal_mode["<leader>ap"] = "<cmd>Lab code panel<cr>"

vim.keymap.set("n", "<C-j>", "10jzz")
vim.keymap.set("n", "<C-k>", "10kzz")

buf.normal_mode["gr"] = {
  ":lua require('telescope.builtin').lsp_references()<cr>",
  kind.cmp_kind.Reference .. "Find references"
}

buf.normal_mode["gd"] = {
  ":lua vim.lsp.buf.definition()<cr>",
  -- ":lua require'telescope.builtin'.lsp_definition()<cr>",
  kind.cmp_kind.Reference .. "Find references"
}

buf.normal_mode["gr"] = {
  ":lua require('telescope.builtin').lsp_references()<cr>",
  kind.cmp_kind.Reference .. "Find references"
}

buf.normal_mode["gD"] = {
  ":lua vim.lsp.buf.type_definition()<cr>",
  kind.cmp_kind.Reference .. " Type Definition"
}

wk.mappings["f"] = {
  "<cmd>Telescope find_files<cr>", "Find File"
}

wk.mappings["t"] = {
  name = "Diagnostics",
  t = { "<cmd>TroubleToggle<cr>", "trouble" },
  w = { "<cmd>TroubleToggle workspace_diagnostics<cr>", "workspace" },
  d = { "<cmd>TroubleToggle document_diagnostics<cr>", "document" },
  q = { "<cmd>TroubleToggle quickfix<cr>", "quickfix" },
  l = { "<cmd>TroubleToggle loclist<cr>", "loclist" },
  r = { "<cmd>TroubleToggle lsp_references<cr>", "references" },
}

wk.mappings["se"] = {
  "<cmd>Telescope emoji<cr>", "Emoji"
}

wk.mappings["sg"] = {
  "<cmd>Telescope git_files<cr>", "Git Files"
}

wk.mappings["sm"] = {
  "<cmd>Telescope media_files<cr>", "Media"
}


wk.mappings["S"] = {
  name = "Search and Replace",
  o = { "<cmd>lua require('spectre').open()<CR>", "Open" },
  w = { "<cmd>lua require('spectre').open_visual({select_word=true})<CR>", "Visual Word" },
  s = { "<esc>:lua require('spectre').open_visual()<CR>", "Visual" },
  p = { "viw:lua require('spectre').open_file_search()<cr>", "File Search" }
}

wk.mappings["a"] = {
  name = "Code Runner",
  s = { "<cmd>Lab code stop<cr>" },
  r = { "<cmd>Lab code run<cr>" },
  p = { "<cmd>Lab code panel<cr>" },
}

wk.mappings["z"] = {
  name = "Folding",
  o = { "require('ufo').openAllFolds" },
  c = { "require('ufo').closeAllFolds" }
}

wk.mappings["v"] = {
  name = " persistence.nvim",
  s = { "<cmd>lua require('persistence').load()<cr>", kind.icons.clock .. " Reload last session for dir" },
  l = { "<cmd>lua require('persistence').load({ last = true })<cr>", kind.icons.clock .. " Restore last session" },
  Q = { "<cmd>lua require('persistence').stop()<cr>", kind.icons.exit .. " Quit without saving session" },
}

wk.mappings["l"]["t"] = { ":LvimToggleFormatOnSave<cr>", kind.symbols_outline.File .. " Toggle format-on-save" }
wk.mappings["l"]["R"] = { ":LspRestart<cr>", kind.icons.exit .. " Restart" }

wk.mappings["s"]["w"] = {
  "<cmd>lua require('telescope.builtin').grep_string({ search = vim.fn.expand('<cword>') })<cr>",
  ' ' .. kind.cmp_kind.EnumMember .. " Search Word Under Cursor"
}

wk.mappings["m"] = {
  name = ' ' .. kind.todo_comments.PERF .. " Harpoon",
  m = { ":lua require('harpoon.mark').add_file()<cr>", "Mark file" },
  t = { ":lua require('harpoon.ui').toggle_quick_menu()<cr>", "Toggle UI" },
  a = { ":lua require('harpoon.ui').nav_file(1)<cr>", "Goto mark 1" },
  s = { ":lua require('harpoon.ui').nav_file(2)<cr>", "Goto mark 2" },
  d = { ":lua require('harpoon.ui').nav_file(3)<cr>", "Goto mark 3" },
  f = { ":lua require('harpoon.ui').nav_file(4)<cr>", "Goto mark 4" },
  g = { ":lua require('harpoon.ui').nav_file(5)<cr>", "Goto mark 5" },
  q = { ":lua require('harpoon.ui').nav_file(6)<cr>", "Goto mark 6" },
  w = { ":lua require('harpoon.ui').nav_file(7)<cr>", "Goto mark 7" },
  e = { ":lua require('harpoon.ui').nav_file(8)<cr>", "Goto mark 8" },
  r = { ":lua require('harpoon.ui').nav_file(9)<cr>", "Goto mark 9" },
  n = { ":lua require('harpoon.ui').nav_next()<cr>", "Next file" },
  p = { ":lua require('harpoon.ui').nav_prev()<cr>", "Prev file" },
}

wk.mappings["W"] = {
  name = ' ' .. kind.icons.screen .. " Window Ctrl",
  h = { '<C-w>|', 'Maximize window horizontally (|)' },
  v = { '<C-w>_', 'Maximize window vertically (_)' },
  ['='] = { '<C-w>=', 'Resize windows equally' },
  s = { ":lua require('telescope-tabs').list_tabs()<cr>", 'Search Tabs' },
}

-- wk.mappings["G"] = {
--   name = ' ' .. kind.icons.hint .. " Github Copilot",
--   a = { ":lua require('copilot.suggestion').accept()<cr>", "Accept" },
--   n = { ":lua require('copilot.suggestion').next()<cr>", "Next" },
--   N = { ":lua require('copilot.suggestion').prev()<cr>", "Prev" },
--   d = { ":lua require('copilot.suggestion').dismiss()<cr>", "Dismiss" },
--   t = { ":lua require('copilot.suggestion').toggle_auto_trigger()<cr>", "Toggle Auto Trigger" },
-- }

wk.mappings["G"] = {
  name = ' ' .. kind.icons.hint .. "Chat GPT",
  p = { ":ChatGPT<cr>", "Prompt" },
  a = { ":ChatGPTActAs<cr>", "Act As.." },
  c = { ":ChatGPTCompleteCode<cr>", "Complete Code" },
}


wk.mappings['x'] = { ":xa<cr>", "Save All and Quit", }

wk.mappings["t"] = {
  name = ' Telescope',
  p = { ':Telescope projects<cr>', 'Projects' }, -- requires telescope-project.nvim plugin
  r = { ':Telescope resume<cr>', 'Resume' },
  t = { ':TodoTelescope<cr>', 'Todos' },
  s = { ':Telescope lsp_dynamic_workspace_symbols<cr>', 'Symbols' }
}

wk.mappings["D"] = {
  name = "Database",
  t = { ':DBUIToggle<cr>', "Toggle UI" }
}
