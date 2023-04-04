syntax on

set encoding=utf-8
set nocompatible
set number relativenumber
set scl=yes
set wildmenu
set wildmode=list:longest
set wildignore=*.docx,*.jpg,*.png,*.gif,*.pdf,*.pyc,*.exe,*.flv,*.img,*.xlsx
set hidden
set termguicolors
set clipboard=unnamedplus
set noswapfile
set smartcase
set cursorline
set showmatch
set showcmd
set nohlsearch
set hidden
set nowrap
filetype plugin on

set shiftwidth=4
set tabstop=4
set expandtab
"set smarttab
set smartindent

set nobackup
set scrolloff=10
set pastetoggle=<F2>

" Disables automatic commenting on newline:
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o

call plug#begin('~/config/nvim/plugged')

Plug 'neoclide/coc.nvim', {'branch': 'release'}
"Plug 'preservim/nerdtree'
Plug 'rrethy/vim-hexokinase', { 'do': 'make hexokinase' }
Plug 'vimwiki/vimwiki'
Plug 'tomasr/molokai'
Plug 'tmsvg/pear-tree'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim', { 'tag': '0.1.0' }

call plug#end()

"remaps
let mapleader = " "
"nnoremap <S-h> :call ToggleHiddenAll()<CR>
" Using Lua functions
nnoremap <leader>ff <cmd>lua require('telescope.builtin').find_files()<cr>
nnoremap <leader>fg <cmd>lua require('telescope.builtin').live_grep()<cr>
nnoremap <leader>fb <cmd>lua require('telescope.builtin').buffers()<cr>
nnoremap <leader>fh <cmd>lua require('telescope.builtin').help_tags()<cr>


" load colors
colorscheme molokai

" coc config
source ~/.config/nvim/coc

" Automatically deletes all trailing whitespace and newlines at end of file on save.
"	autocmd BufWritePre * %s/\s\+$//e
"	autocmd BufWritePre * %s/\n\+\%$//e
"	autocmd BufWritePre *.[ch] %s/\%$/\r/e

" Color preview config
let g:Hexokinase_highlighters = ['backgroundfull']

" Shortcutting split navigation, saving a keypress:
	map <C-h> <C-w>h
	map <C-j> <C-w>j
	map <C-k> <C-w>k
	map <C-l> <C-w>l

" Ensure files are read as what I want:
	let g:vimwiki_ext2syntax = {'.Rmd': 'markdown', '.rmd': 'markdown','.md': 'markdown', '.markdown': 'markdown', '.mdown': 'markdown'}
	map <leader>v :VimwikiIndex
	let g:vimwiki_list = [{'path': '~/vimwiki', 'syntax': 'markdown', 'ext': '.md'}]
	autocmd BufRead,BufNewFile /tmp/calcurse*,~/.calcurse/notes/* set filetype=markdown
	autocmd BufRead,BufNewFile *.ms,*.me,*.mom,*.man set filetype=groff
	autocmd BufRead,BufNewFile *.tex set filetype=tex

" Toggle statusline
let s:hidden_all = 0
function! ToggleHiddenAll()
    if s:hidden_all  == 0
        let s:hidden_all = 1
        set noshowmode
        set noruler
        set laststatus=0
        set noshowcmd
    else
        let s:hidden_all = 0
        set showmode
        set ruler
        set laststatus=2
        set showcmd
    endif
endfunction
"call ToggleHiddenAll()

let g:coc_global_extensions = [
  \ 'coc-snippets',
  \ 'coc-prettier',
  \ 'coc-pyright',
  \ 'coc-clangd',
  \ 'coc-html',
  \ 'coc-css']
