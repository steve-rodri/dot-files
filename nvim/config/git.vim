autocmd BufEnter PULLREQ_EDITMSG setlocal filetype=gitcommit
autocmd BufEnter PULLREQ_EDITMSG setlocal filetype=gitcommit
autocmd FileType gitrebase silent! RebaseSquash
autocmd FileType gitcommit set spell
autocmd BufRead,BufNewFile git/config set filetype=gitconfig
command! RebaseSquash silent execute '2,$s/^pick/s/|silent! w!|2'

