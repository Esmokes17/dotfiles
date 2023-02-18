"" Encoding
set encoding=utf-8
set fileencoding=utf-8
set fileencodings=utf-8
set ttyfast

if has('nvim')
    set syntax
else
    syntax on
endif
set ruler               "Show the cursor position all the time
set cursorline
set number relativenumber
"set spell



" Tab
set tabstop=4
set softtabstop=0
set shiftwidth=4
set expandtab
set smarttab

" Search
set hlsearch
set incsearch
set ignorecase
set smartcase

set hidden
"set nowrap
set pumheight=10
set t_Co=256
set autoindent
set autochdir 
set nobackup
set nowritebackup 
set updatetime=100
set shortmess=T
set cmdheight=2
set wildmenu    " Better vim command suggestion
set mouse=a     " mouse support
set backspace=indent,eol,start  " Fix backspace indent

" shell
if has('win32')&&!has('win64')
    set shell=C:\\WINDOWS\\sysnative\\WindowsPowerShell\\v1.0\\powershell.exe
endif