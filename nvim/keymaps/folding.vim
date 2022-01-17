" Folding

"Maps for folding, unfolding all
nnoremap <leader>ff zM<CR>
nnoremap <leader>uf zR<CR>
"Fold levels
nnoremap <leader>fn zm<CR>
nnoremap <leader>fp zr<CR>
"Individiual Folds
nnoremap <leader>fo zo<CR>
nnoremap <leader>fO zO<CR>
nnoremap <leader>fa za<CR>
nnoremap <leader>fA zA<CR>

nnoremap <silent> <leader>ff :let&l:foldlevel = indent(".") / &sw<cr>
