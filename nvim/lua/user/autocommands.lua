vim.cmd [[
  augroup _general_settings
    autocmd!
    autocmd FileType qf,help,man,lspinfo,spectre_panel nnoremap <silent> <buffer> q :close<CR> 
    autocmd FileType qf set nobuflisted
  augroup end

  autocmd BufEnter * ++nested if winnr('$') == 1 && bufname() == 'NvimTree_' . tabpagenr() | quit | endif
]]
-- Shorten function name
local autocommand = vim.api.nvim_create_autocmd

autocommand({ "FileType" }, {
  pattern = { "gitcommit", "markdown" },
  callback = function()
    vim.cmd [[
    setlocal wrap
    setlocal spell
    ]]
  end,
})

-- TODO why this no work?
-- vim.api.nvim_create_autocmd({ "BufEnter" }, {
--   callback = 
--     "++nested if winnr('$') == 1 && bufname() == 'NvimTree_' . tabpagenr() | quit | endif"
-- })

autocommand({ "VimResized" }, {
  callback = function()
    vim.cmd "tabdo wincmd ="
  end,
})

autocommand({ "CmdWinEnter" }, {
  callback = function()
    vim.cmd "quit"
  end,
})

autocommand({ "BufWinEnter" }, {
  callback = function()
    vim.cmd "set formatoptions-=cro"
  end,
})

autocommand({ "TextYankPost" }, {
  callback = function()
    vim.highlight.on_yank { higroup = "Visual", timeout = 200 }
  end,
})

autocommand({ "BufWritePost" }, {
  pattern = { "*.java" },
  callback = function()
    vim.lsp.codelens.refresh()
  end,
})

autocommand({ "VimEnter" }, {
  callback = function()
    vim.cmd "hi link illuminatedWord LspReferenceText"
  end,
})

-- autocmd BufLeave * if (!exists('b:caret')) | let b:caret = winsaveview() | endif
-- autocmd BufEnter * if (exists('b:caret')) | call winrestview(b:caret) | endif

-- Autoformat
-- augroup _lsp
--   autocmd!
--   autocmd BufWritePre * lua vim.lsp.buf.formatting()
-- augroup end
