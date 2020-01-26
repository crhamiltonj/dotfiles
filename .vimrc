" Automatic reloading of .vimrc on save
autocmd! bufwritepost .vimrc source %

" Plugin Manager
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif
call plug#begin()
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-fugitive'
Plug 'machakann/vim-sandwich'
Plug 'junegunn/fzf', {'dir': '~/.fzf', 'do': './install --all'}
Plug 'junegunn/fzf.vim'
Plug 'vimwiki/vimwiki'
Plug 'rafi/awesome-vim-colorschemes'
" Plug 'python-mode/python-mode'
Plug 'jiangmiao/auto-pairs'
Plug 'dense-analysis/ale'
Plug 'psf/black'
Plug 'tpope/vim-dadbod'
Plug 'tmhedberg/SimpylFold'
Plug 'davidhalter/jedi-vim'
Plug 'vim-airline/vim-airline'
if has('nvim') || has('patch-8.0.902')
    Plug 'mhinz/vim-signify'
else
    Plug 'mhinz/vim-signify', { 'branch': 'legacy' }
endif
call plug#end()

" Needed for vimwiki
set nocompatible
filetype plugin on
syntax on

" Show the line range except for current line number
set number relativenumber

" set encoding
set encoding=utf-8

" Set color pallette to 256
set t_Co=256

" set default tabstops
set tabstop=4 sw=4 sts=4 expandtab

" Disable folding in python-mode
let g:pymode_folding=0

" Set jj to end insert mode
inoremap jj <ESC>

" Set leader to ,
let mapleader = ","

" Set filetype plugin loading
filetype plugin indent on
autocmd FileType html setlocal ts=2 sts=2 sw=2
autocmd FileType js setlocal ts=2 sts=2 sw=2
autocmd FileType css setlocal ts=2 sts=2 sw=2
autocmd FileType yaml setlocal ts=2 sts=2 sw=2
autocmd FileType yml setlocal ts=2 sts=2 sw=2

" Remove all trailing whitespace by pressing F5
nnoremap <F5> :let _s=@/<bar>:%s/\s\+$//e<Bar>:let @/=_s<Bar><CR>
"Set colorscheme
colorscheme happy_hacking

" Set font size on GUI
if has ('gui_running')
  set guifont=Iosevka\ 14
  set clipboard=unnamedplus
  set guioptions -=m
  set guioptions -=T
  set guioptions -=r
endif

" Set updatetime for async
set updatetime=100
