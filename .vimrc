syntax on

set encoding=utf-8
set number relativenumber
set wildmenu
set wildmode=list:longest
set wildignore=*.docx,*.jpg,*.png,*.gif,*.pdf,*.pyc,*.exe,*.flv,*.img,*.xlsx

" Enable autocompletion:
set wildmode=longest,list,full

" Disables automatic commenting on newline:
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o

" Enable debugging
let g:ycm_keep_logfiles = 1
let g:ycm_log_level = 'debug'

verbose set shiftwidth=2
verbose set tabstop=2
verbose set expandtab

set nobackup
set scrolloff=10
set pastetoggle=<F2>


call plug#begin()

Plug 'ycm-core/YouCompleteMe'
Plug 'preservim/nerdtree'

call plug#end()
