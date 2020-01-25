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
Plug 'tpope/vim-surround'
Plug 'junegunn/fzf', {'dir': '~/.fzf', 'do': './install --all'}
Plug 'junegunn/fzf.vim'
Plug 'vimwiki/vimwiki'
Plug 'rafi/awesome-vim-colorschemes'
" Plug 'python-mode/python-mode'
Plug 'jiangmiao/auto-pairs'
Plug 'dense-analysis/ale'
Plug 'psf/black'
if has('nvim')
    Plug 'Shougo/deoplete.nvim', {'do': ':UpdateRemotePlugins'}
else
    Plug 'Shougo/deoplete.nvim'
    Plug 'roxma/nvim-yarp'
    Plug 'roxma/vim-hug-neovim-rpc'
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

" Set colorscheme
colorscheme happy_hacking

" Set font size on GUI
if has ('gui_running')
  set guifont=Iosevka\ 14
  set clipboard=unnamedplus
  set guioptions -=m
  set guioptions -=T
  set guioptions -=r
endif

" Deoplete Settings
let g:deoplete#enable_at_statrtup = 1
call deoplete#custom#option('sources', {'_': ['ale'],})
let g:ale_completion_enabled = 1
