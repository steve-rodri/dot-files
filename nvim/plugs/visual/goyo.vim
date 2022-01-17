Plug 'junegunn/goyo.vim'

function! s:goyo_enter()
endfunction

function! s:goyo_leave()
endfunction

autocmd! User GoyoEnter nested call <SID>goyo_enter()
autocmd! User GoyoLeave nested call <SID>goyo_leave()

nmap <leader>z :Goyo<cr>
