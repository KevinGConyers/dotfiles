"C++ settings
set tabstop=4
set softtabstop=4
set shiftwidth=4
set noexpandtab
set colorcolumn=110
highlight ColorColumn ctermbg=darkgray

let &path.="src/include,/usr/include/AL,"

set includeexpr=substitute(v:fname,"\\.','/','g')

let g:ycm_global_ycm_extra_conf="~/.vim/.ycm_extra_conf.py"

nnoremap <F4> :make!<cr>
nnoremap <F5> :!./main<cr>

autocmd BufNewFile *.cpp r ~/.vim/snippets/cppTemplate1.cpp
autocmd FileType cpp inoremap <F8> :!g++ % && ./a.out <CR>
autocmd FileType cpp iabbrev { {<Enter><++><Enter>}
autocmd FileType cpp iabbrev ( ()<Esc>hi
autocmd Filetype cpp iabbrev [ []<Esc>hi
