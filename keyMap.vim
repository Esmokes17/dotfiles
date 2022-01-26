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

vnoremap <A-J> d$p
vnoremap <A-K> dk^P

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

" runnign file

autocmd FileType python map <buffer> <A-r> :w<CR>:term python3 %<CR>
autocmd FileType python imap <buffer> <A-r> <esc>:w<CR>:term python3 %<CR>

autocmd FileType cpp map <buffer> <A-r> :w<CR> :!g++ -o  %:r.out % -std=c++11 && ./%:r.out && rm ./%:r.out <Enter>
autocmd FileType cpp imap <buffer> <A-r> <esc>:w<CR> :!g++ -o  %:r.out % -std=c++11 && ./%:r.out && rm ./%:r.out <Enter>

autocmd FileType c map <buffer> <A-r> :w<CR> :!gcc -o  %:r.out % -std=c11 && ./%:r.out && rm ./%:r.out <Enter>
autocmd FileType c imap <buffer> <A-r> <esc>:w<CR> :!gcc -o  %:r.out % -std=c11 && ./%:r.out && rm ./%:r.out <Enter>

autocmd FileType javascript  map <buffer> <A-r> :w<CR>:term node %<CR>
autocmd FileType javascript imap <buffer> <A-r> <esc>:w<CR>:term node %<CR>

:autocmd FileType html  map <buffer> <A-r> :w<CR>:silent !firefox %<CR>
:autocmd FileType html  imap <buffer> <A-r> <esc>:w<CR>:silent !firefox %<CR>

autocmd FileType java map <buffer> <A-r> :w<CR> :!javac % && java -cp %:p:h %:t:r && rm ./%:r <Enter>
autocmd FileType java imap <buffer> <A-r> <esc>:w<CR> :!javac % && java -cp %:p:h %:t:r && rm ./%:r <Enter>

inoremap { {}<Esc>ha
inoremap ( ()<Esc>ha
inoremap [ []<Esc>ha
inoremap " ""<Esc>ha
inoremap ' ''<Esc>ha
inoremap ` ``<Esc>ha
