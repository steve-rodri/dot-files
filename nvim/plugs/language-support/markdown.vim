" Markdown - Syntax file for Markdowm files
Plug 'tpope/vim-markdown'

hi def link markdownH1Delimiter           PreProc
hi def link markdownH2Delimiter           Type
hi def link markdownH3Delimiter           Directory

" Markdown Folding - Fold based on markdown heading level
Plug 'nelstrom/vim-markdown-folding'

" Quicklink - quickly add markdown links to documents
Plug 'mattn/webapi-vim'
Plug 'christoomey/vim-quicklink'

" Markdown Header Mappings - Easy setting of markdown headers
function! s:SmartLevelFourHeader()
  call s:DeleteExistingUnderline()
  call s:DeleteExistingLeadingHeaderMarks()
  s/^/#### /
  silent! call repeat#set("\<Plug>SmartLevelFourHeader")
endfunction

function! s:SmartLevelThreeHeader()
  call s:DeleteExistingUnderline()
  call s:DeleteExistingLeadingHeaderMarks()
  s/^/### /
  silent! call repeat#set("\<Plug>SmartLevelThreeHeader")
endfunction

function! s:OnLastLineOfFile()
  return line('.') == line('$')
endfunction

function! s:DeleteExistingLeadingHeaderMarks()
  silent! s/^#\{1,6} //
endfunction

function! s:DeleteExistingUnderline()
  if !s:OnLastLineOfFile()
    let saved_cursor = getpos(".")
    +1g/\v^[-=]+$/d
    call setpos('.', saved_cursor)
  endif
endfunction

function! s:SmartUnderline(char)
  call s:DeleteExistingUnderline()
  call s:DeleteExistingLeadingHeaderMarks()
  let underline = repeat(a:char, len(getline('.')))
  call append(line('.'), underline)
  if a:char == '='
    silent! call repeat#set("\<Plug>UnderlineH1", v:count)
  else
    silent! call repeat#set("\<Plug>UnderlineH2", v:count)
  end
endfunction

nnoremap <silent> <Plug>UnderlineH1 :call <sid>SmartUnderline('=')<cr>
nnoremap <silent> <Plug>UnderlineH2 :call <sid>SmartUnderline('-')<cr>
nnoremap <silent> <Plug>SmartLevelThreeHeader :call <sid>SmartLevelThreeHeader()<cr>
nnoremap <silent> <Plug>SmartLevelFourHeader :call <sid>SmartLevelFourHeader()<cr>
nmap <leader>u1 <Plug>UnderlineH1
nmap <leader>u2 <Plug>UnderlineH2
nmap <leader>u3 <Plug>SmartLevelThreeHeader
nmap <leader>u4 <Plug>SmartLevelFourHeader
