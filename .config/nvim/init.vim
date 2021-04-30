set nu rnu
set smartindent
set tabstop=4
set expandtab
set shiftwidth=4
set si
set mouse=a

call plug#begin('~/.vim/plugged')

Plug 'scrooloose/nerdtree'
" Plug 'Xuyuanp/nerdtree-git-plugin'
" Plug 'Lokaltog/vim-easymotion'
Plug 'scrooloose/nerdcommenter'
Plug 'bling/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'blueyed/vim-diminactive'
" Plug 'jiangmiao/auto-pairs'
Plug 'sheerun/vim-polyglot'
" Plug 'ryanoasis/vim-devicons'
" Plug 'vim-syntastic/syntastic'
Plug 'ninegrid/vim-supertab'
" Plug 'neoclide/coc.nvim', {'branch': 'release'}

call plug#end()

let g:NERDSpaceDelims = 1
let g:NERDCompactSexyComs = 1
let g:NERDDefaultAlign = 'left'
let g:NERDAltDelims_java = 1
let g:NERDCustomDelimiters = { 'c': { 'left': '/**','right': '*/' } }
let g:NERDCommentEmptyLines = 1
let g:NERDTrimTrailingWhitespace = 1
let NERDTreeShowHidden=1

map <Leader>cc <plug>NERDComToggleComment
map <Leader>c<space> <plug>NERDComComment

let g:airline#extensions#tabline#enabled = 1
let g:airline_theme='minimalist'
set laststatus=2

map <F3> :NERDTreeToggle<cr>

let g:diminactive_enable_focus = 1 

let g:seoul256_background = 256
colorscheme seoul256-light

highlight VertSplit cterm=NONE

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

let g:syntastic_cpp_compiler = 'g++'
let g:syntastic_cpp_compiler_options = "-std=c++17 -Wall -Wextra -Wpedantic"
let g:syntastic_c_compiler_options = "-std=c11 -Wall -Wextra -Wpedantic"

nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

let g:SuperTabDefaultCompletionType = "<c-n>"
