set guioptions-=m
set guioptions-=T
set guioptions-=r
set guioptions-=R
set guioptions-=L
set guioptions-=l
set guicursor+=a:blinkon0
if has("win32")
    set guifont=Consolas:h11
else
    set guifont=Inconsolata\ 12
endif

" Appearance
set background=dark
colorscheme oceanblack
" Get rid of ugly Green insert
highlight! link ModeMsg MoreMsg
highlight Pmenu ctermbg=238 gui=bold
highlight! link Pmenu Search
highlight! link ColorColumn Search

if has("win32")
    nmap <silent><leader>rr :source $HOME/vimfiles/vimrc <cr> :source $HOME/vimfiles/gvimrc <cr>
else
    nmap <silent><leader>rr :source ~/.vimrc <cr> :source ~/.gvimrc <cr>
endif
