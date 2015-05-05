nmap <silent><buffer><leader>r :!pandoc -o %<.pdf % <cr>
nmap <silent><buffer><leader>rr :!pandoc -o %<.pdf % <cr>
nmap <silent><buffer><leader>rw :!pandoc -o %<.docx % <cr>
nmap <silent><buffer><leader>rb :!pandoc -o %<.pdf  --bibliography=%<.bib % <cr>
nmap <silent><buffer><leader>v :!xdg-open %<.pdf &<cr>
nmap <silent><buffer><leader>vw :!xdg-open %<.docx &<cr>
nmap <silent><buffer><leader>s :! pandoc -t plain % \| style -p <cr>
nmap <silent><buffer><leader>d :! pandoc -t plain % \| diction <cr>
nmap <silent><buffer><leader>m :%! pandoc -t markdown --atx-headers --columns 79 <cr>
setlocal tw=0
setlocal wrap
"let b:did_ftplugin = 1
