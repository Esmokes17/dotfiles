" Specify a directory for plugins
" - For Neovim: stdpath('data') . '/plugged'
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim/plugged')

Plug 'gmarik/Vundle.vim'
Plug 'vim-syntastic/syntastic'
Plug 'nvie/vim-flake8'
Plug 'scrooloose/nerdtree'
Plug 'jistr/vim-nerdtree-tabs'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'Valloric/YouCompleteMe'
Plug 'ryanoasis/vim-devicons'
Plug 'cocopon/pgmnt.vim'

" Initialize plugin system
call plug#end()

set encoding=utf-8
set number
set expandtab
set tabstop=4
set softtabstop=4
set shiftwidth=4
set autoindent
syntax on

let NERDTreeShowHidden=1
let g:ycm_autoclose_preview_window_after_completion=1

map ff :NERDTree<Enter>

" run python file 
command Py :! set $1 `echo "%" | sed 's/\.c//g'` ;python3 $1 "%"
" run c file 
command Gc !set $1 `echo "%" | sed 's/\.c//g'` ;gcc -o $1 "%" ; chmod o+x $1; "./$1"; rm "./$1"
" run cpp file 
command Gcc !set $1 `echo "%" | sed 's/\.c//g'` ;g++ -o $1 "%" ; chmod o+x $1; "./$1"; rm "./$1"

" air-line
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1

if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif

" unicode symbols
let g:airline_left_sep = '»'
let g:airline_left_sep = '▶'
let g:airline_right_sep = '«'
let g:airline_right_sep = '◀'
let g:airline_symbols.linenr = '␊'
let g:airline_symbols.linenr = '␤'
let g:airline_symbols.linenr = '¶'
let g:airline_symbols.branch = '⎇'
let g:airline_symbols.paste = 'ρ'
let g:airline_symbols.paste = 'Þ'
let g:airline_symbols.paste = '∥'
let g:airline_symbols.whitespace = 'Ξ'

" airline symbols
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = ''
