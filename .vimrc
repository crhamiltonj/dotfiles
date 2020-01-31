" Automatic reloading of .vimrc on save
autocmd! bufwritepost .vimrc source %

" Plugin Manager
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif
call plug#begin()
Plug 'davidhalter/jedi-vim'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
call plug#end()


set nocompatible
filetype plugin on
syntax on

" Show the line range except for current line number
set number relativenumber

" set encoding
set encoding=utf-8

" Set color pallette to 256
set t_Co=256

" Set jj to end insert mode
inoremap jj <ESC>

" Map arrow keys to window movement keys
nnoremap <Left> <C-w>h
nnoremap <Right> <C-w>l
nnoremap <Up> <C-w>k
nnoremap <Down> <C-w>j

" Set leader to ,
let mapleader = ","

"set colorscheme to blue
colorscheme blue

" for vim-airline
let g:airline_powerline_fonts = 1
let g:airline_theme='luna'
" jedi-vim setup
let g:jedi#use_splits_not_buffers = "right"
let g:jedi#show_call_signatures = "2"
