" Exit Vim
nnoremap <leader>E ZZ<cr>

" Move between wrapped lines, rather than jumping over wrapped segments
nmap j gj
nmap k gk

" Quickly escape to normal mode
imap jj <esc>

" Quick Call a Vim Command
nnoremap <leader>; :

" Vim Plug
nnoremap <leader>pi :PlugInstall<cr>
nnoremap <leader>pc :PlugClean<cr>

" Q for Ex mode is useless. This will run the macro in q register
nnoremap Q @q

" Search Dotfiles
nnoremap <leader>df :Files ~/.dotfiles/<cr>

"Tab Completion
inoremap <Tab> <c-r>=InsertTabWrapper()<cr>
inoremap <S-Tab> <c-n>

" Toggle char column
nnoremap <leader>tc :call ToggleColumn()<cr>

" File Search and Replace
nnoremap <leader>fsar :%s///g<left><left>
vnoremap <leader>fsar :s///g<left><left>

nmap <leader>src :source ~/.dotfiles/nvim/init.vim<cr>

nmap <leader>k :nohlsearch<CR>
