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

" move up and down line
nnoremap <A-J> dd$p
nnoremap <A-K> ddk^P

vnoremap <A-J> :m '>+1<CR>gv=gv
vnoremap <A-K> :m '>-2<CR>gv=gv

" Better tabbing
vnoremap < <gv
vnoremap > >gv

xnoremap gt gT

nnoremap <A-b> <C-^>    " go back last open file

" switch between .h and .cpp
nnoremap <A-o> :e %:p:s,.h$,.X123X,:s,.cpp$,.h,:s,.X123X$,.cpp,<CR>

" save file
nnoremap <C-s> :w<CR>
inoremap <C-s> <esc>:w<CR>

" running file

autocmd FileType python map <buffer> <A-r> :w<CR>:term python3 %<CR>
autocmd FileType python imap <buffer> <A-r> <esc>:w<CR>:term python3 %<CR>

autocmd FileType cpp map <buffer> <A-r> :w<CR> :!g++ -o  %:r.out % -std=c++11 && ./%:r.out && rm ./%:r.out <Enter>
autocmd FileType cpp imap <buffer> <A-r> <esc>:w<CR> :!g++ -o  %:r.out % -std=c++11 && ./%:r.out && rm ./%:r.out <Enter>

autocmd FileType c map <buffer> <A-r> :w<CR> :!gcc -o  %:r.out % -std=c11 && ./%:r.out && rm ./%:r.out <Enter>
autocmd FileType c imap <buffer> <A-r> <esc>:w<CR> :!gcc -o  %:r.out % -std=c11 && ./%:r.out && rm ./%:r.out <Enter>

autocmd FileType javascript  map <buffer> <A-r> :w<CR>:term node %<CR>
autocmd FileType javascript imap <buffer> <A-r> <esc>:w<CR>:term node %<CR>

:autocmd FileType html  map <buffer> <A-r> :w<CR>:silent ! ./%<CR>
:autocmd FileType html  imap <buffer> <A-r> <esc>:w<CR>:silent ! ./%<CR>

autocmd FileType java map <buffer> <A-r> :w<CR> :!javac % && java -cp %:p:h %:t:r && rm ./%:r <Enter>
autocmd FileType java imap <buffer> <A-r> <esc>:w<CR> :!javac % && java -cp %:p:h %:t:r && rm ./%:r <Enter>

inoremap { {}<Esc>ha
inoremap ( ()<Esc>ha
inoremap [ []<Esc>ha
inoremap " ""<Esc>ha
inoremap ' ''<Esc>ha
inoremap ` ``<Esc>ha

" Simplification
cnoreabbrev W! w!
cnoreabbrev Q! q!
cnoreabbrev Qall! qall!
cnoreabbrev Wq wq
cnoreabbrev Wa wa
cnoreabbrev wQ wq
cnoreabbrev WQ wq
cnoreabbrev W w
cnoreabbrev Q q
cnoreabbrev Qall qall

" Easy copy and paste
vmap <C-c> "+yi
vmap <C-x> "+c
vmap <C-v> c<ESC>"+p
imap <C-v> <ESC>"+pa


" home page
nnoremap <Home> :Startify

" Leader
let g:mapleader="-"

nnoremap <leader>. :lcd %:p:h<CR>
noremap <Leader>te :tabe <C-R>=expand("%:p:h") . "/" <CR>