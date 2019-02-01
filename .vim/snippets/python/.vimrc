"Python settings
au FileType py
			\  setlocal tabstop =4
			\| setlocal softtabstop=4
			\| setlocal shiftwidth =4
			\| setlocal textwidth = 79
			\| setlocal expandtab
			\| setlocal autoindent
			\| setlocal fileformat=unix
			\| setlocal encoding=utf-8
au FileType py  match BadWhiteSpcae /\s\+$/
let python_highlight_all =1
syntax on

