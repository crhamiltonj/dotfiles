" Automatic reloading of .vimrc on save
autocmd! bufwritepost .vimrc source %

" Plugin Manager
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif
call plug#begin()
Plug 'sheerun/vim-polyglot'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-surround'
Plug 'Raimondi/delimitMate'
Plug 'godlygeek/tabular'
Plug 'plasticboy/vim-markdown'
Plug 'ervandew/supertab'
Plug 'ycm-core/YouCompleteMe'
" make YCM compatible with UltiSnips (using supertab)
let g:ycm_key_list_select_completion = ['<C-n>', '<Down>']
let g:ycm_key_list_previous_completion = ['<C-p>', '<Up>']
let g:SuperTabDefaultCompletionType = '<C-n>'
Plug 'SirVer/ultisnips'
" ultisnips trigger configuration
let g:UltiSnipsExpandsTrigger = "<tab>"
let g:UltiSnipsListSnippets = "<c-l>"
let g:UltiSnipsJumpForwardTrigger = "<tab>"
let g:UltiSnipsJumpBackwardTrigger = "<s-tab>"
Plug 'honza/vim-snippets'
Plug 'mlaursen/vim-react-snippets'
Plug 'mattn/emmet-vim'
Plug 'davidhalter/jedi-vim'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'morhetz/gruvbox'
Plug 'luochen1990/rainbow'
let g:rainbow_active=1
Plug 'prettier/vim-prettier',{'do': 'yarn install'}
let g:prettier#autoformat = 0
autocmd BufWritePre *.js,*.jsx,*.mjs,*.ts,*.tsx,*.css,*.less,*.scss,*.json,*.graphql,*.md,*.vue,*.yaml,*.html PrettierAsync
Plug 'psf/black'
Plug 'preservim/nerdtree'
Plug 'chrisbra/Colorizer'
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

"set colorscheme to blue and background to dark
colorscheme gruvbox
set background=dark


" for vim-airline
let g:airline_powerline_fonts = 1
let g:airline_theme='luna'


" jedi-vim setup
let g:jedi#use_splits_not_buffers = "right"
let g:jedi#show_call_signatures = "2"

" Format Python files on save
autocmd BufWritePre *.py execute ':Black'

" Format Python files on demand
nnoremap <F9> :Black<CR>

" Toggle NERDTree
nnoremap <F7> :NERDTreeToggle<CR>

" For colorizer highlighting
set termguicolors
let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"

" Set default tabs
set sts=2 ts=2 sw=2 noexpandtab
