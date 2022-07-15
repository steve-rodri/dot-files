" Easy Align - operators for aligning characters across lines
Plug 'junegunn/vim-easy-align'

command! ReformatTable normal vip<cr>**|

" Easy Align
nmap <leader>rft :ReformatTable<cr>
vmap <cr> <Plug>(EasyAlign)
