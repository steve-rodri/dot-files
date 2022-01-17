" Buffers

" write
nnoremap <leader>w :w<cr>
" write and close
nnoremap <leader>wq :w<cr> :bd<cr>
" vertical split
nnoremap <leader>vs :vs<cr>
" toggle last buffer
nnoremap <leader>bb <C-^><cr>
" close
nnoremap <leader>q :bd<cr>
" close all
nnoremap <leader>qq :%bd<cr>
" go to next buffer
nnoremap <Tab> :bn<cr>
" go to previous buffer
nnoremap <leader><Tab> :bp<cr>
" go to first buffer
nnoremap <leader>bf :bf<cr>
" go to last buffer
nnoremap <leader>bl :bl<cr>
" switch between the last two buffers
nnoremap <leader><leader> <c-^>

" zoom
nnoremap <leader>- :wincmd _<cr>:wincmd \|<cr>
nnoremap <leader>= :wincmd =<cr>
