" Automatic reloading of .vimrc on save
autocmd! bufwritepost .vimrc source %

" Set laststatus to always show status line
let laststatus=2

" set encoding
set encoding=utf-8

" Set color pallette to 256
set t_Co=256

" Set filetype plugin loading
filetype plugin indent on

" Plug plugin manager definition
call plug#begin('~/.vim/plugged')
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-dispatch'
Plug 'scrooloose/syntastic'
Plug 'scrooloose/nerdtree'
Plug 'Valloric/YouCompleteMe'
Plug 'sirver/ultisnips'
Plug 'honza/vim-snippets'
Plug 'mattn/emmet-vim'
Plug 'python-mode/python-mode'
Plug 'pearofducks/ansible-vim', {'do': 'cd ./UltiSnips; python2 generate.py' }
Plug 'elzr/vim-json'
Plug 'stanangeloff/php.vim'
Plug 'vim-scripts/bash-support.vim'
Plug 'chrisbra/Colorizer'
Plug 'airblade/vim-gitgutter'
Plug 'nathanaelkane/vim-indent-guides'
Plug 'Yggdroot/indentLine'
Plug 'mhinz/vim-startify'
" Plug 'ayu-theme/ayu-vim'
Plug 'Dru89/vim-adventurous'
Plug 'abra/vim-obsidian' 
Plug 'altercation/vim-colors-solarized'
" Plug 'w0rp/ale'
call plug#end()

" Airline config variables
" let g:airline_powerline_fonts = 1
" let g:airline_theme='jellybeans'
" let g:airline_solarized_bg='dark'
" let g:airline#extensions#tabline#enabled = 1
" let g:airline#extensions#tabline#fnamemod = ':t'

" Syntastic settings
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

" Disable YCM tab completion
let g:ycm_key_list_select_completion=[]
let g:ycm_key_list_previous_completion=[]

" change the leader key
let mapleader = ","

" Unmap the arrow keys
no <down> <NOP>
no <left> <NOP>
no <right> <NOP>
no <up> <NOP>
ino <down> <NOP>
ino <left> <NOP>
ino <right> <NOP>
ino <up> <NOP>

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

let ayucolor="ayu"

set bg=dark
colorscheme adventurous
set cursorline
set guioptions-=mTrL

" set indent for ansible yaml
au FileType ansible setlocal shiftwidth=2 tabstop=2 softtabstop=2 expandtab
