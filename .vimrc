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
Plug 'tpope/vim-fugitive'
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
let g:UltiSnipsJumpForwardTrigger = "<c-j>"
let g:UltiSnipsJumpBackwardTrigger = "<c-k>"
Plug 'honza/vim-snippets'
Plug 'mlaursen/vim-react-snippets'
Plug 'mattn/emmet-vim'
Plug 'davidhalter/jedi-vim'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'morhetz/gruvbox'
Plug 'rafi/awesome-vim-colorschemes'
Plug 'luochen1990/rainbow'
let g:rainbow_active=1
Plug 'prettier/vim-prettier',{'do': 'yarn install'}
let g:prettier#autoformat = 0
autocmd BufWritePre *.js,*.jsx,*.mjs,*.ts,*.tsx,*.css,*.less,*.scss,*.json,*.graphql,*.md,*.vue,*.yaml,*.html PrettierAsync
Plug 'psf/black'
Plug 'preservim/nerdtree'
Plug 'chrisbra/Colorizer'
Plug 'junegunn/fzf', {'do': './install --bin'}
Plug 'junegunn/fzf.vim'
Plug 'MaxMEllon/vim-jsx-pretty'
Plug 'vimwiki/vimwiki'
Plug 'rust-lang/rust.vim'
Plug 'tmhedberg/SimpylFold'
let g:SimpylFold_docstring_preview=1
nnoremap <space>+ za
Plug 'janko/vim-test'
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

" Map CTRL-dir keys for Windows Movement
nnoremap <C-H> <C-w>h
nnoremap <C-L> <C-w>l
nnoremap <C-K> <C-w>k
nnoremap <C-J> <C-w>j

inoremap <C-H> <C-w>h
inoremap <C-L> <C-w>l
inoremap <C-K> <C-w>k
inoremap <C-J> <C-w>j

vnoremap <C-H> <C-w>h
vnoremap <C-L> <C-w>l
vnoremap <C-K> <C-w>k
vnoremap <C-J> <C-w>j

" Set leader to ,
let mapleader = ","

" for vim-airline
let g:airline_powerline_fonts = 1
let g:airline_theme='luna'


" jedi-vim setup
let g:jedi#use_splits_not_buffers = "right"
let g:jedi#show_call_signatures = "2"

" Format Python files on save
autocmd BufWritePre *.py execute ':Black'

" Toggle NERDTree
nnoremap <F5> :e.<CR>

" For colorizer highlighting
set termguicolors
let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"

" Autosave when focus lost ingnore untitled buffers
:au FocusLost * silent! wa

"set colorscheme to blue and background to dark
colorscheme PaperColor
set background=dark

" these "Ctrl mappings" work well when Caps Lock is mapped to Ctrl
nmap <silent> <leader>n :TestNearest<CR>
nmap <silent> <leader>f :TestFile<CR>
nmap <silent> <leader>s :TestSuite<CR>
nmap <silent> <leader>l :TestLast<CR>
nmap <silent> <leader>v :TestVisit<CR>

" Disable folding
set nofoldenable

autocmd BufEnter *.html set ai sw=2 ts=2 sta et fo=croql
