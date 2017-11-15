" Automatic reloading of .vimrc on save
autocmd! bufwritepost .vimrc source %

" Set tabstops for all yaml file
autocmd FileType yaml setlocal ts=2 sts=2 sw=2 expandtab


" Set laststatus to always show status line
set laststatus=2
set showtabline=2
set noshowmode

" set encoding
set encoding=utf-8

" Set color pallette to 256
set t_Co=256

source ~/.vimrc_plugins


" Set filetype plugin loading
filetype plugin indent on

source ~/.vimrc_ale
source ~/.vimrc_airline
source ~/.vimrc_syntastic
source ~/.vimrc_ycm

" change the leader key
let g:mapleader = ','

" Unmap the arrow keys
no <down> <NOP>
no <left> <NOP>
no <right> <NOP>
no <up> <NOP>
ino <down> <NOP>
ino <left> <NOP>
ino <right> <NOP>
ino <up> <NOP>

" use W to write to a priviledged file
command! W :execute ':silent w !sudo tee % > /dev/null' | :edit!

" Make jk work like <Esc>
inoremap jj <Esc>

" Adjust keymap to support multiple buffers easier
set hidden
nmap <leader>T :enew<cr>
nmap <leader>l :bnext<cr>
nmap <leader>h :bprevious<cr>
nmap <leader>bq :bp <BAR> bd #<cr>
nmap <leader>bl :ls<cr>

" Show the line range except for current line number
set number relativenumber
let g:solarized_termcolors=256
let g:solarized_termtrans=1
" colorscheme solarized
colorscheme molokai
" colorscheme xoria256
set background=dark
set cursorline

set tabstop=2 sw=2 sts=2 expandtab
