" Convenience - configs & mappings to smooth out rough edges and make vim feel like home

augroup vimrcEx
  autocmd!
  " When editing a file, always jump to the last known cursor position.
  " Don't do it for commit messages, when the position is invalid, or when
  " inside an event handler (happens when dropping a file on gvim).
  autocmd BufReadPost *
    \ if &ft != 'gitcommit' && line("'\"") > 0 && line("'\"") <= line("$") |
    \   exe "normal g`\"" |
    \ endif
augroup END

" Toggle ColorColumn
function ToggleColumn()
  if &colorcolumn == "+1"
    set colorcolumn=0
  else
    set colorcolumn=+1
  endif
endfunction
