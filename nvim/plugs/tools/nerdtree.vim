" Nerd Tree
Plug 'preservim/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
" Plug 'scrooloose/nerdtree-project-plugin'
Plug 'PhilRunninger/nerdtree-buffer-ops'
Plug 'PhilRunninger/nerdtree-visual-selection'

nnoremap <expr> <C-n> g:NERDTree.IsOpen() ? ':NERDTreeClose<CR>' : @% == '' ? ':NERDTree<CR>' : ':NERDTreeFind<CR>'
vmap ++ <plug>NERDCommenterToggle
nmap ++ <plug>NERDCommenterToggle

"By default titlecase maps itself to gt,
"but this interferes with the default mapping for switching tabs.
"If you would like to disable the default maps, enable this:
let g:titlecase_map_keys = 0

let g:NERDTreeIgnore = ['^node_modules$']
let g:NERDTreeShowHidden = 1
let g:WebDevIconsUnicodeDecorateFolderNodes = 1
let g:NERDTreeGitStatusNodeColorization = 1
