set nocompatible              " required
filetype plugin on" required
filetype indent on
let g:tex_flavor='latex'
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" Add all your plugins here (note older versions of Vundle used Bundle instead of Plugin)
Plugin 'tmhedberg/SimplyFold'
Plugin 'vim-scripts/indentpython.vim'
Plugin 'vim-syntastic/syntastic'
Plugin 'nvie/vim-flake8'
Plugin 'lervag/vimtex'
"Plugin 'Valloric/YouCompleteMe'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
set nu
" Enable Folding with spacebard in normal mode
set foldmethod=indent
set foldlevel=99
nnoremap <space> za
"key mappings
let mapleader = "-"
let maplocalleader = "\\"
noremap <leader>- ddo<esc>kp
noremap <leader>_ ddkkp
noremap <leader>ev :vsplit ~/.vimrc<cr>
noremap <leader>sv :source ~/.vimrc<cr>
inoremap <c-u> <esc>viwUi
nnoremap <c-u> viwU<esc>
nnoremap <leader>i ggvG=
nnoremap <leader>w dwi
map <F6> :setlocal spell!<CR>
inoremap <Space><Space> <Esc>/<++><Enter>"_c4l
"Abrevviations
iabbrev --- ---------------------------------------------------------------------------

iabbrev adn and
iabbrev waht what
iabbrev kk Kevin Conyers
iabbrev @@ kgc0019@tigermail.auburn.edu
iabbrev ** /**/
"Spelling
set spelllang=en
set spellfile=$HOME/.vim/spell/en.utf-8.add
"LateX settings
autocmd Filetype tex setl updatetime=1
let g:livepreview_engire = 'mupdf'
autocmd Filetype tex inoremap <leader>sec \section{<++>} <++>
autocmd Filetype tex inoremap <leader>bb \textbf{<++>}
autocmd Filetype tex inoremap <leader>ii <Esc>i\begin{itemize}<Esc>o<Esc>o\end{itemize}<Esc>ki
autocmd Filetype tex inoremap <leader>ee <Esc>i/begin{enumerate}<Esc>o<Esc>o\end{enumerate}<Esc>ki 
autocmd Filetype tex inoremap <leader>it \item{}<Esc>i
autocmd Filetype tex set wrap linebreak
autocmd Filetype tex setlocal spell
autocmd BufNewFile notes.tex -1read ~/.vim/snippets/Notes.tex

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

"C++ settings
autocmd BufNewFile *.cpp r ~/.vim/snippets/cppTemplate1.cpp
map <F8> :!g++ % && ./a.out <CR>


"YouCompleteMe settings
let g:ycm_keep_logfiles = 1
let g:ycm_log_level = 'debug'

"Python settings
autocmd BufNewFile *.py -1read ~/.vim/snippets/pythonTemplate1.py

"HTML And JavaScript
autocmd BufNewFile js.html -1read ~/.vim/snippets/js.html
