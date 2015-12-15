nmap <silent><buffer><leader>r :!pandoc -Ss -o %<.pdf % <cr>
nmap <silent><buffer><leader>rr :!pandoc -Ss -o %<.pdf % <cr>
nmap <silent><buffer><leader>rw :!pandoc -Ss -o %<.docx % <cr>
nmap <silent><buffer><leader>rb :!pandoc -Ss -o %<.pdf  --bibliography=%<.bib % <cr>
if has('win32')
    nmap <silent><buffer><leader>v :! %<.pdf <cr>
    nmap <silent><buffer><leader>vw :! %<.docx <cr>
else
    nmap <silent><buffer><leader>v :!xdg-open %<.pdf &<cr>
    nmap <silent><buffer><leader>vw :!xdg-open %<.docx &<cr>
endif

nmap <silent><buffer><leader>s :! pandoc -Ss -t plain % \| style -p <cr>
nmap <silent><buffer><leader>d :! pandoc -Ss -t plain % \| diction <cr>
nmap <silent><buffer><leader>m :%! pandoc -Ss -t markdown --atx-headers --columns 79 <cr>
setlocal tw=0
setlocal wrap
setlocal linebreak
"let b:did_ftplugin = 1
