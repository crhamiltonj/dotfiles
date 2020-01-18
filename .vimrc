" Automatic reloading of .vimrc on save
autocmd! bufwritepost .vimrc source %

" Set tabstops for all yaml file
augroup filetype_yaml
  autocmd FileType yaml setlocal ts=2 sts=2 sw=2 expandtab
augroup END

" Set laststatus to always show status line
set laststatus=2
set showtabline=2
set noshowmode

" Show the line range except for current line number
set number relativenumber

" set encoding
set encoding=utf-8

" Set color pallette to 256
set t_Co=256

" set default tabstops
set tabstop=2 sw=2 sts=2 expandtab

" Set filetype plugin loading
filetype plugin indent on
autocmd FileType html setlocal ts=2 sts=2 sw=2
autocmd FileType js setlocal ts=2 sts=2 sw=2
autocmd FileType css setlocal ts=2 sts=2 sw=2

" Autosave on blur
augroup AutoWrite
  autocmd! BufLeave * :update
augroup END

set autowriteall

source ~/.vimrc.d/.vimrc_plugins
source ~/.vimrc.d/.vimrc_ale
" source ~/.vimrc.d/.vimrc_airline
" source ~/.vimrc.d/.vimrc_syntastic
" source ~/.vimrc.d/.vimrc_ycm
source ~/.vimrc.d/.vimrc_mappings
source ~/.vimrc.d/.vimrc_colorschemes
" source ~/.vimrc.d/.vimrc_ultisnips
" source ~/.vimrc.d/.vimrc_autosave
" source ~/.vimrc.d/.vimrc_ultisnipsconf
source ~/.vimrc.d/.vimrc_vimwiki
source ~/.vimrc.d/.vimrc_nerdtree
" source ~/.vimrc.d/.vimrc_markdown
source ~/.vimrc.d/.vimrc_fzf

