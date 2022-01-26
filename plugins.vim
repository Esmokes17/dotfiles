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
Plug 'morhetz/gruvbox'          "theme
"for nvim
Plug 'neoclide/coc.nvim', {'branch': 'master', 'do': 'yarn install --frozen-lockfile'}
Plug 'jackguo380/vim-lsp-cxx-highlight'
call plug#end()

"--------------------------Plugin setting----------------------"

" snippets
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"

"cxx highlight
let g:cpp_class_scope_highlight = 1
let g:cpp_member_variable_highlight = 1
let g:cpp_class_decl_highlight = 1

let g:airline_stl_path_style = 'short'

source ~/.config/nvim/coc.vim 
