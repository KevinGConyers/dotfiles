set nocompatible              " required filetype plugin on" required
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
"Plugin 'xuhdev/vim-latex-live-preview'
Plugin 'Valloric/YouCompleteMe'
Plugin 'l04m33/vlime', {'rtp': 'vim/'}
Plugin 'morhetz/gruvbox'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
"General Settings
set exrc
set secure
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
set splitbelow
set splitright
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
noremap <leader>evl :vsplit ./.vimrc<cr>
noremap <leader>sv :source ~/.vimrc<cr>
noremap <leader>svl :source ./.vimrc<cr>
inoremap <c-u> <esc>viwUi
nnoremap <c-u> viwU<esc>
nnoremap <leader>i ggvG=
nnoremap <leader>w dwi
map <F6> :setlocal spell!<CR>
"Abrevviations
iabbrev --- ---------------------------------------------------------------------------

iabbrev adn and
iabbrev waht what
iabbrev kk Kevin Conyers
iabbrev @@ kgc0019@tigermail.auburn.edu
iabbrev ** /**/

"Spelling
syntax on
set spelllang=en
set spellfile=$HOME/.vim/spell/en.utf-8.add

"YouCompleteMe settings
let g:ycm_keep_logfiles = 1
let g:ycm_log_level = 'debug'

"HTML And JavaScript
autocmd BufNewFile js.html -1read ~/.vim/snippets/js.html

"Vimtex stuff
let g:vimtex_view_general_viewer = 'zathura'


