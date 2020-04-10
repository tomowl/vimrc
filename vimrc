if has('python3')
        silent! python3 1
endif

" vim Plugins
call plug#begin()
 
  " Plug 'ludovicchabant/vim-gutentags'
  " Plug 'dracula/vim'
  " Plug 'ErichDonGubler/vim-sublime-monokai'
 
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'scrooloose/nerdcommenter'
Plug 'pseewald/vim-anyfold'
Plug 'tweekmonster/impsort.vim'
Plug 'mileszs/ack.vim'
Plug 'davidhalter/jedi-vim'
Plug 'ryanoasis/vim-devicons'
Plug 'qpkorr/vim-bufkill'
Plug 'dense-analysis/ale'
Plug 'python-mode/python-mode', { 'for': 'python', 'branch': 'develop' }
Plug 'dracula/vim', { 'as': 'dracula' }
call plug#end()

" NerdTree Settings
map <F2>  :NERDTreeToggle<CR>

let g:NERDTreeDirArrowExpandable = '▸'
let g:NERDTreeDirArrowCollapsible = '▾'
let NERDTreeShowHidden=1
let NERDTreeIgnore=['\.pyc$', '\~$'] "ignore files in NERDTree

" autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") &&
" b:NERDTree.isTabTree()) | q | endif
let g:NERDTreeHighlightCursorline = 1
let g:WebDevIconsUnicodeDecorateFolderNodes = 1
let g:WebDevIconsNerdTreeAfterGlyphPadding = ' '

" NerdTree Commenter
let g:NERDSpaceDelims = 1

" Common Settings
set number
set numberwidth=1
set mouse=a
set expandtab
set tabstop=4
set encoding=utf8
let python_highlight_all=1
set colorcolumn=80
set noswapfile
set clipboard=unnamed
set backspace=indent,eol,start

" Panes
map <C-l> <C-w>v
map <C-h> <C-w>c
map <C-k> <C-w>s

" Move around panes
map <S-l> <C-w><Right>
map <S-h> <C-w><Left>
map <S-j> <C-w><Up>
map <S-k> <C-w><Down>

" Resize panes
map <F12> :vertical resize -5<CR>
map <S-F12> :vertical resize +5<CR>
map <F10> :resize -5<CR>
map <S-F10> :resize +5<CR>

" Buffers
map <S-Left> :bp<CR>
map <S-Right> :bn<CR>
map <S-Down> :BD<CR>


" Airline
let g:airline_theme='dracula'
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1

" Ale
let b:ale_linters = ['flake8']
let b:ale_fixers = ['autopep8']
let g:airline#extensions#ale#enabled = 1
" let g:ale_linters_explicit = 1


" AnyFold
let anyfold_activate=0
let anyfold_fold_comments=1
set foldlevel=20
set foldmethod=indent

" Theme
syntax enable
colorscheme dracula

 " Jedi
let g:jedi#use_splits_not_buffers = "right"
let g:jedi#documentation_command = ""
let g:jedi#show_call_signatures = "2"
let g:jedi#documentation_command = "<F4>"
autocmd FileType python setlocal completeopt-=preview

" Impsort
map <C-i> :ImpSort!<CR>
 
" SilverSearch Ack
let g:ackprg = 'ag --nogroup --nocolor --column'
 
