" General
let mapleader = ","

set nocompatible
set spell spelllang=en_us
set encoding=utf-8
set noerrorbells
set hidden
set nowrap
set autoread
set cmdheight=2 "Avoid hit-enter
set undofile
set gdefault
set foldlevel=999
set number
set foldmethod=indent

highlight OverLength ctermbg=red ctermfg=white guibg=#592929
match OverLength /\%81v.\+/

if has("win32")
    set directory=$HOME\vimfiles\backup,$TEMP
    set backupdir=$HOME\vimfiles\backup,$TEMP
    set undodir=$HOME\vimfiles\backup,$TEMP
else
    set directory=~/.vim/backup,/tmp
    set backupdir=~/.vim/backup,/tmp
    set undodir=~/.vim/undo,/tmp
endif

" Tab
set expandtab
set shiftwidth=4
set tabstop=4
set softtabstop=4

" Vundle
filetype off
if has("win32")
    let &rtp=&rtp.','.$HOME."/vimfiles/bundle/vundle"
    call vundle#begin($HOME."/vimfiles/bundle")
else
    set rtp+=~/.vim/bundle/vundle/
    call vundle#begin()
endif


Plugin 'gmarik/vundle'

Plugin 'tpope/vim-sensible'
Plugin 'rakr/vim-one'

Plugin 'Chiel92/vim-autoformat'
Plugin 'scrooloose/nerdtree'
Plugin 'xuyuanp/nerdtree-git-plugin'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'qpkorr/vim-bufkill'
Plugin 'ajh17/vimcompletesme'
Plugin 'godlygeek/tabular'
Plugin 'junegunn/goyo.vim'
Plugin 'junegunn/limelight.vim'
Plugin 'scrooloose/nerdcommenter'
Plugin 'scrooloose/syntastic'
Plugin 'sjl/gundo.vim'
Plugin 'tpope/vim-fugitive'

Plugin 'Vimjas/vim-python-pep8-indent'
Plugin 'vim-pandoc/vim-pandoc'
Plugin 'vim-pandoc/vim-pandoc-syntax'

call vundle#end()
filetype plugin indent on

" File and omnicomplete
set cot=menu
au BufWrite * :Autoformat

" Search
set hlsearch
set ignorecase
set smartcase

" Appearance
syntax enable
set background=dark
colorscheme one
" Get rid of ugly Green insert
highlight! link ModeMsg MoreMsg
highlight Pmenu ctermbg=238 gui=bold
highlight! link Pmenu Search
highlight! link ColorColumn Search
highlight! link Spellbad Search
highlight! link WildMenu Search

" Plugins
let g:syntastic_enable_signs=0
let g:pandoc#syntax#conceal#use = 0

let g:formatdef_pandoc = '"pandoc -t markdown --standalone --atx-headers"'
let g:formatters_pandoc = ['pandoc']

autocmd! User GoyoEnter Limelight
autocmd! User GoyoLeave Limelight!


" Remapping
nmap <leader>w :w<cr>
nmap <leader>c :BD<cr>
nmap <silent><C-X> :NERDTreeToggle<CR>
nmap <silent><C-H> :bp<CR>
nmap <silent><C-L> :bn<CR>
nmap <leader>t <C-W><C-W><CR>
nmap ; :
nmap <silent><leader>e :Explore<CR>
if has("win32")
    nmap <silent><leader>rr :source $HOME/vimfiles/vimrc <cr>
else
    nmap <silent><leader>rr :source ~/.vimrc <cr>
endif
nmap <silent><leader>x "+
vmap <silent><leader>x "+
nmap <silent><leader><leader><leader> :nohlsearch<CR>
