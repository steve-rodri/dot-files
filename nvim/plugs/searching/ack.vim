" Ack - Integrata ack (grep replacement) into vim
Plug 'mileszs/ack.vim'

let g:ackprg = 'ag --nogroup --nocolor --column'

function! s:VisualAck()
  let temp = @"
  normal! gvy
  let escaped_pattern = escape(@", "[]().*")
  let @" = temp
  execute "Ack! '" . escaped_pattern . "'"
endfunction

nmap <leader>se :Ack!<space>
nnoremap <leader>cc :cclose<cr>:pclose<cr>
nnoremap K :Ack! '<C-r><C-w>'<cr>
vnoremap K :<C-u>call <sid>VisualAck()<cr>
