" Plugins
call plug#begin()
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
Plug 'preservim/nerdtree'
Plug 'https://github.com/vim-syntastic/syntastic.git'
Plug 'itchyny/lightline.vim'
Plug 'lervag/vimtex'
Plug 'ryanolsonx/vim-xit'
call plug#end()

"Setting Color Scheme
syntax on
set background=dark
colorscheme one
hi Normal guibg=NONE ctermbg=NONE
"colorscheme monokai

filetype on
filetype plugin on
filetype plugin indent on
syntax enable

"For vimtex
let g:vimtex_view_method = 'zathura'
let g:vimtex_view_general_options = '--unique file:@pdf\#src:@line@tex'
let maplocalleader = ","

"Enabling Powerline
"set rtp+=/usr/lib/python3.10/site-packages/powerline/bindings/vim/
let g:lightline = {
      \ 'colorscheme': 'PaperColor',
      \ }

"Always show statusline
set laststatus=2

"Use 256 colours (Use this setting only if your terminal supports 256 colours)
set t_Co=256

set wildmenu
set wildmode=list:longest
set wildignore=*.docx,*.jpg,*.png,*.gif,*.pdf,*.pyc,*.exe,*.flv,*.img,*.xlsx

"Other Config
set number relativenumber
set linebreak
set showbreak=+
set textwidth=100
set showmatch
set hlsearch
set smartcase
set ignorecase
set incsearch
set autoindent	
set shiftwidth=4
set smartindent
set smarttab
set softtabstop=4
set ruler
set undolevels=1000
set backspace=indent,eol,start
set noshowmode
set spell

" Key mappings
"Disabling Arrow Keys
"noremap <Up> <Nop>
"noremap <Down> <Nop>
"noremap <Left> <Nop>
"noremap <Right> <Nop>

let NERDTreeWinSize = 16
nnoremap <F2> :NERDTreeToggle<CR>
nnoremap tt :VimtexClean<CR> :VimtexView<CR>

nmap <S-Enter> O<Esc>
nmap <CR> o<Esc>

"set statusline+=%#warningmsg#
"set statusline+=%{SyntasticStatuslineFlag()}
"set statusline+=%*
"let g:syntastic_go_checkers = ['go', 'gofmt', 'govet']
"let g:syntastic_always_populate_loc_list = 1
"let g:syntastic_auto_loc_list = 1
"let g:syntastic_check_on_open = 1
"let g:syntastic_check_on_wq = 0


