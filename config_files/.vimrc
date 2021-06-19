set splitbelow
set number 
syntax on 
set tabstop=4
set autoindent
set backupdir=.backup/,~/.backup/,/tmp//
set directory=.swp/,~/.swp/,/tmp//
set undodir=.undo/,~/.undo/,/tmp//
call plug#begin()

Plug 'neoclide/coc.nvim', {'branch': 'release'}

call plug#end()
