lvim.keys.normal_mode["<S-l>"] = ":BufferLineCycleNext<CR>"
lvim.keys.normal_mode["<S-h>"] = ":BufferLineCyclePrev<CR>"
lvim.keys.normal_mode["<M-j>"] = false
lvim.keys.insert_mode["<M-j>"] = false
lvim.keys.visual_mode["<M-j>"] = false
lvim.keys.normal_mode["<M-k>"] = false
lvim.keys.insert_mode["<M-k>"] = false


lvim.builtin.which_key.mappings["t"] = {
  name = "Diagnostics",
  t = { "<cmd>TroubleToggle<cr>", "trouble" },
  w = { "<cmd>TroubleToggle workspace_diagnostics<cr>", "workspace" },
  d = { "<cmd>TroubleToggle document_diagnostics<cr>", "document" },
  q = { "<cmd>TroubleToggle quickfix<cr>", "quickfix" },
  l = { "<cmd>TroubleToggle loclist<cr>", "loclist" },
  r = { "<cmd>TroubleToggle lsp_references<cr>", "references" },
}

lvim.builtin.which_key.mappings["S"] = {
  name = "Search and Replace",
  o = { "<cmd>lua require('spectre').open()<CR>", "Open" },
  w = { "<cmd>lua require('spectre').open_visual({select_word=true})<CR>", "Visual Word" },
  s = { "<esc>:lua require('spectre').open_visual()<CR>", "Visual" },
  p = { "viw:lua require('spectre').open_file_search()<cr>", "File Search" }
}

lvim.builtin.which_key.mappings["a"] = {
  name = "Code Runner",
  s = { "<cmd>Lab code stop<cr>" },
  r = { "<cmd>Lab code run<cr>" },
  p = { "<cmd>Lab code panel<cr>" },
}

lvim.keys.normal_mode["<leader>as"] = "<cmd>Lab code stop<cr>"
lvim.keys.normal_mode["<leader>ar"] = "<cmd>Lab code run<cr>"
lvim.keys.normal_mode["<leader>ap"] = "<cmd>Lab code panel<cr>"

-- lvim.keys.normal_mode["<leader>S"] = "<cmd>lua require('spectre').open()<CR>"
-- lvim.keys.normal_mode["<leader>sw"] = "<cmd>lua require('spectre').open_visual({select_word=true})<CR>"
-- lvim.keys.visual_mode["<leader>s"] = "<esc>:lua require('spectre').open_visual()<CR>"
-- lvim.keys.normal_mode["<leader>sp"] = "viw:lua require('spectre').open_file_search()<cr>"