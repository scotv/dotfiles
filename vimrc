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

"region Surround
nmap <space>' ciw'<c-r>"'<esc>
vmap <space>' c'<c-r>"'<esc>

nmap <space>" ciw"<c-r>""<esc>
vmap <space>" c"<c-r>""<esc>

nmap <space>( ciw(<c-r>")<esc>
vmap <space>( c(<c-r>")<esc>

nmap <space>[ ciw[<c-r>"]<esc>
vmap <space>[ c[<c-r>"]<esc>
"endregion

set list
" Show $ at end of line and trailing space as ~
set lcs=tab:\ \ ,eol:$,trail:~,extends:>,precedes:<

set noexpandtab
set sw=4
set tabstop=4
set softtabstop=4

" REQUIRED. This makes vim invoke Latex-Suite when you open a tex file.
filetype plugin on

" IMPORTANT: win32 users will need to have 'shellslash' set so that latex
" can be called correctly.
set shellslash

" IMPORTANT: grep will sometimes skip displaying the file name if you
" search in a singe file. This will confuse Latex-Suite. Set your grep
" program to always generate a file-name.
set grepprg=grep\ -nH\ $*

" OPTIONAL: This enables automatic indentation as you type.
filetype indent on

" OPTIONAL: Starting with Vim 7, the filetype of empty .tex files defaults to
" 'plaintex' instead of 'tex', which results in vim-latex not being loaded.
" The following changes the default filetype back to 'tex':
let g:tex_flavor='latex'

" this is mostly a matter of taste. but LaTeX looks good with just a bit
" of indentation.
set sw=2
" TIP: if you write your \label's as \label{fig:something}, then if you
" type in \ref{fig: and press <C-n> you will automatically cycle through
" all the figure labels. Very useful!
set iskeyword+=:

