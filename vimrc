" General
let mapleader = ","

set nocompatible
set spell spelllang=en_us
set encoding=utf-8
set ruler
set showcmd
set noerrorbells
set hidden
set nowrap
set autoread
set directory=~/.vim/backup,/tmp
set undodir=~/.vim/undo,/tmp
"set colorcolumn=+1
set autochdir
set cmdheight=2 "Avoid hit-enter
set undofile
set gdefault
set grepprg=ack

" Tab
set expandtab
set autoindent
set smarttab
set shiftwidth=4
set tabstop=4
set softtabstop=4
set shiftround

" Vundle
filetype off
if exists("g:custom_vundle_dir")
    let &rtp=&rtp.','.g:custom_vundle_dir."/vundle"
    call vundle#rc(g:custom_vundle_dir)
else
    set rtp+=~/.vim/bundle/vundle/
    call vundle#rc()
endif

Bundle 'gmarik/vundle'
Bundle 'OceanBlack256'
Bundle 'oceanblack.vim'
Bundle 'scrooloose/nerdtree'
Bundle 'scrooloose/nerdcommenter'
Bundle 'buftabs'
Bundle 'Shougo/neocomplcache.vim'
Bundle 'hynek/vim-python-pep8-indent'
Bundle 'Syntastic'
Bundle 'VimOutliner'
Bundle 'UltiSnips'
Bundle 'vimroom.vim'

" File and omnicomplete
filetype indent on
filetype plugin on
syntax on
au Filetype python syntax keyword pythonDecorator True False self None
set cot=menu

" Search
set hlsearch
set incsearch
set ignorecase
set smartcase

" Appearance
set background=dark
colorscheme oceanblack256
" Get rid of ugly Green insert
highlight! link ModeMsg MoreMsg
highlight Pmenu ctermbg=238 gui=bold
highlight! link Pmenu Search
highlight! link ColorColumn Search
highlight! link Spellbad Search

" Plugins
let NERDTreeQuitOnOpen = 1
"let g:neocomplcache_enable_at_startup = 1
let g:syntastic_enable_signs=0

" Remapping
nmap <silent><leader>w :w<cr>
nmap <silent><leader>c :bd<cr>
nmap <silent><C-H> :bp<CR>
nmap <silent><C-L> :bn<CR>
nmap ; :
nmap <silent><leader><space> :nohlsearch<CR>
nmap <silent><leader>e :NERDTreeToggle<CR>
nmap <silent><leader>t :TlistToggle<cr>
