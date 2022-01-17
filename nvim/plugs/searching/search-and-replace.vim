" Gsub - Project wide find and replace
Plug 'https://github.com/christoomey/gsub.vim'

" Mappings to search for the <cword> or visual highlight, and run Gsearch
nmap <leader>sar *:Gsearch<cr>
vmap <leader>sar *:Gsearch<cr>

autocmd FileType gsub nnoremap <buffer> <cr><cr> :Gsub<cr>
