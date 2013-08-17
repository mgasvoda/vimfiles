nmap <silent><buffer><leader>r :!pandoc -o %<.pdf % <cr>
nmap <silent><buffer><leader>rr :!pandoc -o %<.pdf % <cr>
nmap <silent><buffer><leader>rw :!pandoc -o %<.docx % <cr>
nmap <silent><buffer><leader>rb :!pandoc -o %<.pdf  --bibliography=%<.bib % <cr>
nmap <silent><buffer><leader>v :!xdg-open %<.pdf <cr>
nmap <silent><buffer><leader>vw :!xdg-open %<.docx <cr>
nmap <silent><buffer><leader>s :! pandoc -t markdown --atx-headers % \| style -p <cr>
nmap <silent><buffer><leader>d :! pandoc -t markdown --atx-headers % \| diction <cr>
nmap <silent><buffer><leader>m :%! pandoc -t markdown --atx-headers --columns 79 <cr>
setlocal tw=79
let b:did_ftplugin = 1
