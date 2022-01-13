"   __   __   __   __   ______      __   __ __   __    __
"  /\ \ /\ '-.\ \ /\ \ /\__  _\    /\ \ / //\ \ /\ "-./  \
"  \ \ \\ \ \-.  \\ \ \\/_/\ \/ ___\ \ \'/ \ \ \\ \ \-./\ \
"   \ \_\\ \_\\'\_\\ \_\  \ \_\/\__\\ \__|  \ \_\\ \_\ \ \_\
"    \/_/ \/_/ \/_/ \/_/   \/_/\/__/ \/_/    \/_/ \/_/  \/_/

let mapleader = "\<Space>"

function! s:SourceFilesIn(directory)
  let directory_splat = '~/.config/nvim/' . a:directory . '/*'
  for config_file in split(glob(directory_splat), '\n')
    if filereadable(config_file)
      execute 'source' config_file
    endif
  endfor
endfunction

call plug#begin('~/.vim/plugged')
call s:SourceFilesIn('plugs/editing-text')
call s:SourceFilesIn('plugs/intellisense')
call s:SourceFilesIn('plugs/miscellanous')
call s:SourceFilesIn('plugs/searching')
call s:SourceFilesIn('plugs/tools')
call s:SourceFilesIn('plugs/visual')
call s:SourceFilesIn('plugs/language-support')
call plug#end()

call s:SourceFilesIn('config')
