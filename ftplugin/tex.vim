setlocal tw=79
nmap <silent><buffer><leader>r :!xelatex % <cr>
nmap <silent><buffer><leader>rr :!xelatex % <cr>
nmap <silent><buffer><leader>rb :!xelatex % && bibtex %< && xelatex % && xelatex % <cr>
nmap <silent><buffer><leader>v :!xdg-open %<.pdf <cr>
nmap <silent><buffer><leader>s :! pandoc -t markdown --atx-headers % \| style -p <cr>
nmap <silent><buffer><leader>d :! pandoc -t markdown --atx-headers % \| diction <cr>
