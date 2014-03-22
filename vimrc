colorscheme evening

map <C-F12> :!ctags -R --c++-kinds=+p --fields=+iaS --extra=+q .<CR>

execute pathogen#infect()

let g:EasyMotion_leader_key = '<Leader>'
let mapleader = ","

inoremap jk <esc>
inoremap <esc> <NOP>

set nu

"region Syntax and Indent
syntax on		" turn on syntax highlight
set showmatch
filetype indent on
filetype on
set autoindent
set si			" smart indent
"endregion
