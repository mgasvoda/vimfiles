" General
let mapleader = ","

set nocompatible
set spell spelllang=en_us
set encoding=utf-8
set noerrorbells
set hidden
set nowrap
set autoread
if has("win32")
    set directory=$HOME\vimfiles\backup,c:\temp
    set undodir=$HOME\vimfiles\backup,c:\temp
else
    set directory=~/.vim/backup,/tmp
    set undodir=~/.vim/undo,/tmp
endif
set autochdir
set cmdheight=2 "Avoid hit-enter
set undofile
set gdefault
set grepprg=ack
set foldlevel=999

" Tab
set expandtab
set shiftwidth=4
set tabstop=4
set softtabstop=4

" Vundle
filetype off
if has("win32")
    let &rtp=&rtp.','.$HOME."/vimfiles/bundle/vundle"
    call vundle#begin($HOME."/vimfiles/bundle/vundle")
else
    set rtp+=~/.vim/bundle/vundle/
    call vundle#begin()
endif

Plugin 'OceanBlack256'
Plugin 'Shougo/neocomplcache.vim'
Plugin 'Tabular'
Plugin 'buftabs'
Plugin 'gmarik/vundle'
Plugin 'hynek/vim-python-pep8-indent'
Plugin 'junegunn/goyo.vim'
Plugin 'oceanblack.vim'
Plugin 'scrooloose/nerdcommenter'
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/syntastic'
Plugin 'tpope/vim-sensible'
Plugin 'vimoutliner/vimoutliner'
Plugin 'vim-pandoc/vim-pandoc'
Plugin 'vim-pandoc/vim-pandoc-syntax'
Plugin 'tpope/vim-fugitive'

call vundle#end()
filetype plugin indent on

" File and omnicomplete
"au Filetype python syntax keyword pythonDecorator True False self None
set cot=menu

" File
autocmd BufNewFile,BufReadPost *.md set filetype=markdown

" Search
set hlsearch
set ignorecase
set smartcase

" Appearance
syntax enable
set background=dark
colorscheme oceanblack256
" Get rid of ugly Green insert
highlight! link ModeMsg MoreMsg
highlight Pmenu ctermbg=238 gui=bold
highlight! link Pmenu Search
highlight! link ColorColumn Search
highlight! link Spellbad Search
highlight! link WildMenu Search

" Plugins
let NERDTreeQuitOnOpen = 1
let g:neocomplcache_enable_at_startup = 1
let g:syntastic_enable_signs=0
let g:goyo_width = 90
let g:pandoc#syntax#conceal#use = 0
let g:pandoc#formatting#mode = "ha"

" Remapping
nmap <leader>w :w<cr>
nmap <leader>c :bd<cr>
nmap <silent><C-H> :bp<CR>
nmap <silent><C-L> :bn<CR>
nmap ; :
nmap <silent><leader>e :NERDTree %:p:h<CR>
nmap <silent><leader>t :TlistToggle<cr>
if has("win32")
    nmap <silent><leader>rr :source $HOME/vimfiles/vimrc <cr> :source $HOME/vimfiles/gvimrc <cr>
else
    nmap <silent><leader>rr :source ~/.vimrc <cr> :source ~/.gvimrc <cr>
endif
nmap <silent> <C-_> :nohlsearch<CR>
nmap <silent><leader><leader><leader> :nohlsearch<CR>

