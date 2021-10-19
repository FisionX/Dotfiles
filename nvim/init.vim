syntax on

set encoding=utf-8
set number relativenumber
set wildmenu
set wildmode=list:longest
set wildignore=*.docx,*.jpg,*.png,*.gif,*.pdf,*.pyc,*.exe,*.flv,*.img,*.xlsx
set hidden


" Disables automatic commenting on newline:
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o


verbose set shiftwidth=2
verbose set tabstop=2
verbose set expandtab

set nobackup
set scrolloff=10
set pastetoggle=<F2>


call plug#begin()

Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'preservim/nerdtree'

call plug#end()

" coc config
source ~/.config/nvim/coc.vim
