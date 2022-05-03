vim.g.ascii = {
   [[     _   __         _    ___]],
   [[    / | / /__  ____| |  / (_)___ ___]],
   [[   /  |/ / _ \/ __ \ | / / / __ `__ \]],
   [[  / /|  /  __/ /_/ / |/ / / / / / / /]],
   [[ /_/ |_/\___/\____/|___/_/_/ /_/ /_/]],
   [[]],
}

vim.g.startify_bookmarks = {
   '~/Documents/Development',
   { t = '~/Documents/Development/tmp.nosync' },
   { d = '~/.dotfiles' },
   { v = '~/.dotfiles/nvim' },
   { s = '~/.dotfiles/nvim/snips' },
   { x = '~/.dotfiles/nvim/plugs/tools/startify' },
   { y = '~/.dotfiles/yabai' },
   { z = '~/.dotfiles/zsh' },
   { a = '~/.dotfiles/alacritty/alacritty.yml' },
   { h = '~/.dotfiles/hammerspoon/keyboard' },
}
vim.g.startify_lists = {
   { type = 'files',     header = { 'Recent' }     },
   { type = 'sessions',  header = { 'Session' }    },
   { type = 'bookmarks', header = { 'Bookmarks' }  },
}

vim.g.startify_custom_header = 'startify#pad(g:ascii + startify#fortune#boxed())'
vim.g.startify_session_dir  = '~/.config/nvim/session'
vim.g.startify_session_autoload = 1
vim.g.startify_session_delete_buffers = 1
vim.g.startify_change_to_vcs_root = 1
vim.g.startify_fortune_use_unicode = 1
vim.g.startify_session_persistence = 1
vim.g.startify_enable_special = 0
vim.g.startify_files_number = 5
