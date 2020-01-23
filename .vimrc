" Automatic reloading of .vimrc on save
autocmd! bufwritepost .vimrc source %

" Show the line range except for current line number
set number relativenumber

" set encoding
set encoding=utf-8

" Set color pallette to 256
set t_Co=256

" set default tabstops
set tabstop=4 sw=4 sts=4 expandtab

" Set filetype plugin loading
filetype plugin indent on
autocmd FileType html setlocal ts=2 sts=2 sw=2
autocmd FileType js setlocal ts=2 sts=2 sw=2
autocmd FileType css setlocal ts=2 sts=2 sw=2
autocmd FileType yaml setlocal ts=2 sts=2 sw=2
autocmd FileType yml setlocal ts=2 sts=2 sw=2

if has ('gui_running')
  set guifont=Iosevka
  set clipboard=unnamedplus
endif
