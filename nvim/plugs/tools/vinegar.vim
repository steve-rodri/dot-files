" Vinegar
Plug 'tpope/vim-vinegar'

" Split windows and the project drawer go together like oil and vinegar.
" I don't mean to say that you can combine them to create a delicious salad
" dressing. I mean that they don't mix well!

" Drew Neil

" You know what netrw is, right? The built in directory browser? Well,
" vinegar.vim enhances netrw, partially in an attempt to mitigate the need for
" more disruptive 'project drawer' style plugins.

" Some of the behaviors added by vinegar.vim would make excellent upstream
" additions. Many, the author would probably reject. Others are a bit too wild
" to even consider.

" Press - in any buffer to hop up to the directory listing and seek to the file
" you just came from. Keep bouncing to go up, up, up. Having rapid directory
" access available changes everything.

" All that annoying crap at the top is turned off, leaving you with nothing but
" a list of files. This is surprisingly disorienting, but ultimately very
" liberating. Press I to toggle until you adapt.

" The oddly C-biased default sort order is replaced with a sensible application
" of 'suffixes'.

" File hiding: files are not listed that match with one of the patterns in
" 'wildignore'.

" If you put let g:netrw_list_hide = '\(^\|\s\s\)\zs\.\S\+' in your vimrc,
" vinegar will initialize with dot files hidden. Press gh to toggle dot file
" hiding.

" Press . on a file to pre-populate it at the end of a : command line. This is
" great, for example, to quickly initiate a :grep of the file or directory under
" the cursor. There's also !, which starts the line off with a bang. Type
" !chmod +x and get :!chmod +x path/to/file.

" Press y. to yank an absolute path for the file under the cursor.
" Press ~ to go home.
" Use Vim's built-in CTRL-^ (CTRL-6) for switching back to the previous buffer
" from the netrw buffer.