" download vim-plug if missing
if empty(glob('~/.vim/autoload/plug.vim'))
  silent! execute '!curl -fsSLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
  autocmd VimEnter *  silent PlugInstall
endif

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



" Plug plugin manager definition
silent! if plug#begin('~/.vim/plugged')
  Plug 'tpope/vim-fugitive'
  Plug 'tpope/vim-surround'
  Plug 'tpope/vim-commentary'
  Plug 'tpope/vim-dispatch'
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
  Plug 'ayu-theme/ayu-vim'
  Plug 'Dru89/vim-adventurous'
  Plug 'abra/vim-obsidian'
  Plug 'altercation/vim-colors-solarized'
  Plug 'powerline/powerline', { 'rtp': 'powerline/bindings/vim' }
  " Plug 'vim-scripts/wc.vim--jcline'
  Plug 'vim-latex/vim-latex'
  Plug 'vim-airline/vim-airline'
  Plug 'vim-airline/vim-airline-themes'
  Plug 'edkolev/tmuxline.vim'
  Plug 'bronson/vim-trailing-whitespace'
  Plug 'mattn/emmet-vim'
  Plug 'nightsense/forgotten'
  Plug 'pprovost/vim-ps1'
  Plug 'edouardp/ps1-ultisnips'
  Plug 'phenomenes/ansible-snippets'
  Plug 'vim-scripts/xoria256.vim'
  Plug 'ctrlpvim/ctrlp.vim'
  Plug 'godlygeek/tabular'
  Plug 'plasticboy/vim-markdown'
  Plug 'vim-pandoc/vim-pandoc'
  Plug 'fs111/pydoc.vim'
  Plug 'tomasr/molokai'
  Plug 'crusoexia/vim-monokai'
  Plug 'tomasiser/vim-code-dark'
  Plug 'NLKNguyen/papercolor-theme'
  Plug 'jonathanfilip/lucius'
  if v:version >= 800
   Plug 'w0rp/ale'
  else
   Plug 'scrooloose/syntastic'
  endif
  call plug#end()
endif

" Set filetype plugin loading
filetype plugin indent on

" set configuration for ale
if v:version >= 800
  let g:ale_sign_column_always = 1
  let g:airline#extensions#ale#enabled = 1
endif

" Airline config variables
let g:airline_powerline_fonts = 1
let g:airline_theme='jellybeans'
let g:airline_solarized_bg='dark'
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#fnamemod = ':t'

" Syntastic settings
" set statusline+=%#warningmsg#
" set statusline+=%{SyntasticStatuslineFlag()}
" set statusline+=%*
" let g:syntastic_always_populate_loc_list = 1
" let g:syntastic_auto_loc_list = 1
" let g:syntastic_check_on_open = 1
" let g:syntastic_check_on_wq = 0

" Disable YCM tab completion
" let g:ycm_key_list_select_completion=[]
" let g:ycm_key_list_previous_completion=[]

" Utisnips trigger configuration
let g:UltiSnipsUsePythonVersion = 3
let g:UltiSnipsListSnippets='<c-l>'
let g:UltiSnipsExpandTrigger='<c-x>'
let g:UltiSnipsJumpForwardTrigger='<c-b>'
let g:UltiSnipsJumpBackwardTrigger='<c-z>'
let g:UltiSnipsEditSplit='vertical'
let g:UltiSnipsSnippetDirectories=['UltiSnips']

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
