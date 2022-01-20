"-----------------------general setting----------------------"
set syntax
set hidden
set nowrap
set encoding=UTF-8
set pumheight=10
set ruler               "Show the cursor position all the time
set t_Co=256
set cursorline
set smarttab
set expandtab
set tabstop=4
set shiftwidth=4
"set spell
set relativenumber
set autoindent
set autochdir 
set nobackup
set nowritebackup 
set updatetime=100
set shortmess=T
set cmdheight=2

"-----------------------------Plug----------------------------"
call plug#begin()
Plug 'SirVer/ultisnips'         "snippets engine
Plug 'honza/vim-snippets'       "snippets
Plug 'scrooloose/nerdtree'      "nerd three
Plug 'mhinz/vim-startify'       "quick start page
Plug 'KabbAmine/vCoolor.vim'    "color picker
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-fugitive'
Plug 'rbong/vim-flog'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'cdelledonne/vim-cmake'
Plug 'ryanoasis/vim-devicons'   "vim icon
Plug 'ajmwagar/vim-deus'        "theme
call plug#end()

"--------------------------Plugin setting----------------------"

" snippets
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"

"----------------------------Themes----------------------------"
set background=dark    " Setting dark mode
colorscheme deus
let g:deus_termcolors=256

"----------------------------Keymaps---------------------------"
" move split panes to left/bottom/top/right
nnoremap <A-h> <C-W>H
nnoremap <A-j> <C-W>J
nnoremap <A-k> <C-W>K
nnoremap <A-l> <C-W>L

" move between panes to left/bottom/top/right
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" Press i to enter insert mode, and ii to exit insert mode.
inoremap ii <Esc>
inoremap jk <Esc>
inoremap kj <Esc>
vnoremap jk <Esc>
vnoremap kj <Esc>

" Use alt + hjkl to resize windows
nnoremap <M-j>    :resize -2<CR>
nnoremap <M-k>    :resize +2<CR>
nnoremap <M-h>    :vertical resize -2<CR>
nnoremap <M-l>    :vertical resize +2<CR>

" Better tabbing
vnoremap < <gv
vnoremap > >gv

xnoremap gt gT

" running code
execute "set <M-r>=\er"

autocmd FileType python map <buffer> <M-r> :w<CR>:term python3 %<CR>
autocmd FileType python imap <buffer> <M-r> <esc>:w<CR>:term python3 %<CR>

autocmd FileType cpp map <buffer> <M-r> :w<CR> :!g++ -o  %:r.out % -std=c++11 && ./%:r.out && rm ./%:r.out <CR>
autocmd FileType cpp imap <buffer> <M-r> <esc>:w<CR> :!g++ -o  %:r.out % -std=c++11 && ./%:r.out && rm ./%:r.out <CR>

autocmd FileType c map <buffer> <M-r> :w<CR> :!gcc -o  %:r.out % -std=c11 && ./%:r.out && rm ./%:r.out <CR>
autocmd FileType c imap <buffer> <M-r> <esc>:w<CR> :!gcc -o  %:r.out % -std=c11 && ./%:r.out && rm ./%:r.out <CR>

autocmd FileType javascript  map <buffer> <M-r> :w<CR>:term node %<CR>
autocmd FileType javascript imap <buffer> <M-r> <esc>:w<CR>:term node %<CR>

:autocmd FileType html  map <buffer> <M-r> :w<CR>:silent !firefox %<CR>
:autocmd FileType html  imap <buffer> <M-r> <esc>:w<CR>:silent !firefox %<CR>

autocmd FileType java map <buffer> <M-r> :w<CR> :!javac % && java -cp %:p:h %:t:r && rm ./%:r <CR>
autocmd FileType java imap <buffer> <M-r> <esc>:w<CR> :!javac % && java -cp %:p:h %:t:r && rm ./%:r <CR>
