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
set cmdheight=2 "Avoid hit-enter
set undofile
set gdefault
set grepprg=ack
set foldlevel=999
set number

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

Plugin 'buftabs'
Plugin 'oceanblack.vim'
Plugin 'OceanBlack256'
Plugin 'Tabular'

Plugin 'derekwyatt/vim-scala'
Plugin 'gmarik/vundle'
Plugin 'hynek/vim-python-pep8-indent'
Plugin 'junegunn/goyo.vim'
Plugin 'scrooloose/nerdcommenter'
Plugin 'scrooloose/syntastic'
Plugin 'Shougo/neocomplcache.vim'
Plugin 'Shougo/neosnippet'
Plugin 'Shougo/neosnippet-snippets'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-sensible'
Plugin 'tpope/vim-vinegar'
Plugin 'vim-pandoc/vim-pandoc'
Plugin 'vim-pandoc/vim-pandoc-syntax'

call vundle#end()
filetype plugin indent on

" File and omnicomplete
"au Filetype python syntax keyword pythonDecorator True False self None
set cot=menu

" File
autocmd BufNewFile,BufReadPost,BufEnter *.md set filetype=markdown
autocmd FileType python autocmd BufWritePre <buffer> :%s/\s\+$//e

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
let g:neocomplcache_enable_at_startup = 1
let g:syntastic_enable_signs=0
let g:goyo_width = 90
let g:pandoc#syntax#conceal#use = 0
"let g:pandoc#formatting#mode = "h"
"let g:neocomplcache_disable_auto_complete = 1
" SuperTab like snippets behavior.
imap <expr><TAB> neosnippet#expandable_or_jumpable() ?
\ "\<Plug>(neosnippet_expand_or_jump)"
\: pumvisible() ? "\<C-n>" : "\<TAB>"
smap <expr><TAB> neosnippet#expandable_or_jumpable() ?
\ "\<Plug>(neosnippet_expand_or_jump)"
\: "\<TAB>"


" Remapping
nmap <leader>w :w<cr>
nmap <leader>c :bd<cr>
nmap <silent><C-H> :bp<CR>
nmap <silent><C-L> :bn<CR>
nmap ; :
nmap <silent><leader>e :Explore<CR>
nmap <silent><leader>t :TlistToggle<cr>
if has("win32")
    nmap <silent><leader>rr :source $HOME/vimfiles/vimrc <cr> :source $HOME/vimfiles/gvimrc <cr>
else
    nmap <silent><leader>rr :source ~/.vimrc <cr> :source ~/.gvimrc <cr>
endif
nmap <silent> <C-_> :nohlsearch<CR>
nmap <silent><leader>x "+
nmap <silent><leader><leader><leader> :nohlsearch<CR>
