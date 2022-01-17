"Color Scheme

if (has("nvim"))
  let $NVIM_TUI_ENABLE_TRUE_COLOR=1
endif

if (has("termguicolors"))
  set termguicolors
endif

" syntax on

function! s:syntax_query() abort
  for id in synstack(line("."), col("."))
    echo synIDattr(id, "name")
  endfor
endfunction

command! SyntaxQuery call s:syntax_query()

" options: dark, darker, cool, deep, warm, warmer, light
let g:onedark_config = {
  \ 'style': 'deep',
  \ 'transparent': 'v:true',
  \ 'toggle_style_key': '<leader>ts',
  \ 'ending_tildes': v:false,
  \ 'diagnostics': {
    \ 'darker': v:false,
    \ 'undercurl': v:true,
    \ 'background': v:false,
  \ },
\ }

colorscheme onedark

"Highlight column
highlight ColorColumn guibg=#6f717f

" hi def link jsObjectKey Identifier
" hi def link jsObjectProp Identifier
" hi def link jsStorageClass Keyword
" hi def link jsArrowFunction Keyword
