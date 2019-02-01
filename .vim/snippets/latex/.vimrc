"LateX settings
inoremap <Space><Space> <Esc>/<++><Enter>"_c4l
autocmd Filetype tex setl updatetime=1
let g:livepreview_engire = 'mupdf' 
autocmd Filetype tex inoremap <leader>sec \section{<++>}<Enter><++>
autocmd Filetype tex inoremap <leader>sc* \section*{<++>}<Enter><++>
autocmd Filetype tex inoremap <leader>bb \textbf{<++>}
autocmd Filetype tex inoremap <leader>ii <Esc>i\begin{itemize}<Esc>o<Esc>o\end{itemize}<Esc>ki
autocmd Filetype tex inoremap <leader>ee <Esc>i/begin{enumerate}<Esc>o<Esc>o\end{enumerate}<Esc>ki 
autocmd Filetype tex iabbrev \begin{gather*} \begin{gather*}<Enter><++><Enter>\end{gather*}
autocmd Filetype tex iabbrev \begin{align*} \begin{align*}<Enter><++><Enter>\end{align*}

autocmd Filetype tex inoremap <leader>it \item{}<Esc>i
autocmd Filetype tex set wrap linebreak
autocmd Filetype tex setlocal spell
autocmd BufNewFile notes.tex -1read ~/.vim/snippets/Notes.tex
syntax on
