set guioptions-=m
set guioptions-=T
set guioptions-=r
set guioptions-=R
set guioptions-=L
set guioptions-=l
set guicursor+=a:blinkon0
if has("win32")
    set guifont=Consolas:h11
endif
" Appearance
set background=dark
colorscheme oceanblack
" Get rid of ugly Green insert
highlight! link ModeMsg MoreMsg
highlight Pmenu ctermbg=238 gui=bold
highlight! link Pmenu Search
highlight! link ColorColumn Search
cd ~
