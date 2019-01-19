"----------Pathogen Load---------"
execute pathogen#infect()
filetype plugin indent on
"----------Plugin Options--------"

"----------Vim Options-----------"
syntax on
colorscheme desert
set number
set autoindent
set incsearch
set hlsearch
set backspace=indent,eol,start
"-----------Mappings--------------"
nmap ,edvim :tabedit ~/.vimrc<cr>
