" Automatic reloading of .vimrc on save
autocmd! bufwritepost .gvimrc source %

if has('gui_running')
	" Set the font style
	set guifont=Iosevka\ 14
	colorscheme OceanicNext
	set guioptions -=m
	set guioptions -=T
	set guioptions -=r
	set guioptions -=L
endif

