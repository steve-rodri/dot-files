" Completion related settings

" Tab completion
" will insert tab at beginning of line,
" will use completion if not at beginning

function! InsertTabWrapper()
    let col = col('.') - 1
    if !col || getline('.')[col - 1] !~ '\k'
        return "\<tab>"
    else
        return "\<c-p>"
    endif
endfunction
