map <C-F12> :!ctags -R --c++-kinds=+p --fields=+iaS --extra=+q .<CR>

execute pathogen#infect()

let g:EasyMotion_leader_key = '<Leader>'
let mapleader = ","
