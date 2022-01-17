Plug 'https://github.com/puremourning/vimspector'
" mnemonic 'di' = 'debug inspect' (pick your own, if you prefer!)

nmap <Leader>db :call vimspector#Launch()

" for normal mode - the word under the cursor
nmap <Leader>di <Plug>VimspectorBalloonEval
" for visual mode, the visually selected text
xmap <Leader>di <Plug>VimspectorBalloonEval

nmap <Leader>dc <Plug>VimspectorContinue
nmap <Leader>dx <Plug>VimspectorStop
nmap <Leader>dr <Plug>VimspectorRestart
nmap <Leader>dp <Plug>VimspectorPause
nmap <Leader>dtb <Plug>VimspectorToggleBreakpoint
" nmap <Leader>dbc <Plug>VimspectorToggleConditionalBreakpoint
" nmap <Leader>dbf <Plug>VimspectorAddFunctionBreakpoint
nmap <Leader>dso <Plug>VimspectorStepOver
nmap <Leader>dsk <Plug>VimspectorStepOut
