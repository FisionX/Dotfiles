syntax on

set number relativenumber
set wildmenu
set wildmode=list:longest
set wildignore=*.docx,*.jpg,*.png,*.gif,*.pdf,*.pyc,*.exe,*.flv,*.img,*.xlsx

verbose set shiftwidth=2
verbose set tabstop=2
verbose set expandtab

set nobackup
set scrolloff=10


call plug#begin()

Plug 'preservim/nerdtree'

call plug#end()
