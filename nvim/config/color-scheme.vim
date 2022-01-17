"Color Scheme

if (has("nvim"))
  let $NVIM_TUI_ENABLE_TRUE_COLOR=1
endif

if (has("termguicolors"))
  set termguicolors
endif

" syntax on

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

lua <<EOF
require 'nvim-treesitter.configs'.setup {
  -- One of "all", "maintained" (parsers with maintainers), or a list of languages
  ensure_installed = "maintained",

  -- Install languages synchronously (only applied to `ensure_installed`)
  sync_install = false,

  -- List of parsers to ignore installing
  ignore_install = {},

  highlight = {
    -- `false` will disable the whole extension
    enable = true,

    -- list of language that will be disabled
    disable = {},

    -- Setting this to true will run `:h syntax` and tree-sitter at the same time.
    -- Set this to `true` if you depend on 'syntax' being enabled (like for indentation).
    -- Using this option may slow down your editor, and you may see some duplicate highlights.
    -- Instead of true it can also be a list of languages
    additional_vim_regex_highlighting = false,
  },
}
EOF

"Highlight column
highlight ColorColumn guibg=#6f717f

" hi def link jsObjectKey Identifier
" hi def link jsObjectProp Identifier
" hi def link jsStorageClass Keyword
" hi def link jsArrowFunction Keyword

" " Purple
" hi def link typescriptInterfaceKeyword Keyword
" hi def link typescriptCastKeyword Keyword
" hi def link typescriptOperator Keyword
" hi def link typescriptVariable Keyword
" hi def link typescriptFuncKeyword Keyword
" hi def link typescriptObjectType Keyword
" hi def link typescriptArrowFunc Statement
" hi def link typescriptImport Statement
" hi def link typescriptExport Statement
" hi def link typescriptExportType Statement
" hi def link typescriptExceptions Statement

" " Blue
" hi def link typescriptMethod Function
" hi def link typescriptHeadersMethod Function
" hi def link typescriptIdentifierName Function
" hi def link typescriptProp Function

" " Red
" hi def link typescriptDOMEventProp Identifier
" hi def link typescriptTypeReference Identifier
" hi def link typescriptObjectLabel Identifier
" hi def link typescriptMember Identifier
" hi def link typescriptDestructureLabel Identifier

" " Yellow
" hi def link typescriptGlobal Structure
" hi def link typescriptPredefinedType Structure

" " Clear
" hi def link typescriptBraces NONE
" hi def link typescriptFuncType NONE
" hi def link typescriptDestructureVariable NONE
" hi def link typescriptInterfaceName NONE
" hi def link typescriptCall NONE


function! s:syntax_query() abort
  for id in synstack(line("."), col("."))
    echo synIDattr(id, "name")
  endfor
endfunction

command! SyntaxQuery call s:syntax_query()
