set nocompatible
filetype off

" vundle
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
" required! 
Bundle 'gmarik/vundle'
Bundle 'tpope/vim-fugitive'
Bundle 'pangloss/vim-javascript'
Bundle 'wycats/nerdtree'
Bundle 'tpope/vim-vividchalk'
Bundle 'tpope/vim-rails'
Bundle 'vim-scripts/taglist.vim'
Bundle 'altercation/vim-colors-solarized'
Bundle 'vim-scripts/ZoomWin'
Bundle 'tpope/vim-markdown'
Bundle 'kchmck/vim-coffee-script'
Bundle 'tpope/vim-ragtag'
Bundle 'tpope/vim-haml'
Bundle 'tpope/vim-git'
Bundle 'Townk/vim-autoclose'
Bundle 'Lokaltog/vim-powerline'
Bundle 'tpope/vim-surround'
Bundle 'scrooloose/nerdcommenter'
Bundle 'scrooloose/syntastic'
Bundle 'wincent/Command-T'
Bundle 'othree/html5.vim'
Bundle 'ervandew/supertab'
Bundle 'vim-scripts/PDV--phpDocumentor-for-Vim'
Bundle 'janx/vim-rubytest'
Bundle 'noahfrederick/Hemisu'
"Bundle 'skwp/vim-ruby-conque' "Requires conque

" These two are for snipmates
Bundle 'MarcWeber/vim-addon-mw-utils'
Bundle 'tomtom/tlib_vim'

Bundle 'honza/snipmate-snippets'
Bundle 'garbas/vim-snipmate'
Bundle 'kien/ctrlp.vim'
Bundle 'kien/tabman.vim'
Bundle 'vim-scripts/nginx.vim'


" Auto NERDTree on startup
"autocmd vimenter * NERDTree

" Toggle NERDTree with \n
map <Leader>n :NERDTreeToggle<CR>
map <F3> :NERDTreeToggle<CR>
" Toggle Hex editing
map <F8> :%!xxd<CR>
map <F9> :%!xxd -r<CR>

syntax on
set fileencodings=utf-8
set fileencoding=utf-8
set encoding=utf-8
set tenc=utf-8
set ruler
set incsearch
set hlsearch
set t_Co=256
set hidden " hide buffers, not close
set backspace=indent,eol,start
set autoindent
set cindent
set copyindent
set showmatch
set history=200
set undolevels=200
set pastetoggle=<F2>

" Whitespace stuff
set tabstop=4
set shiftwidth=4
set softtabstop=4
"set list listchars=tab:▸\ ,eol:¬,trail:·
set noeol
set shiftround
set smarttab

" Window settings
set wrap
set lbr
set cursorline
set title
"set visualbell
"set noerrorbells

" set folding
set foldmethod=syntax
set foldnestmax=3
set foldlevel=1
let ruby_fold = 1
let php_folding = 1

" Status bar
set laststatus=2
"set statusline=%t\ %y\ format:\ %{&ff};\ [%l,%c]

" Fancy Powerlines
"let g:Powerline_symbols = 'unicode'
let g:Powerline_symbols = 'fancy'

" PHPDoc for Vim: PDV
inoremap <C-G> <ESC>:call PhpDocSingle()<CR>i
nnoremap <C-G> :call PhpDocSingle()<CR>
vnoremap <C-G> :call PhpDocRange()<CR>

" Ctrl-Q to toggle Taglist
nnoremap <C-Q> :TlistToggle<CR>

" Supertabs
let g:SuperTabDefaultCompletionType = "\<c-x>\<c-o>"

" RubyTest - change from <Leader>t to <Leader>\
map <Leader>\ <Plug>RubyTestRun

"ctrlp
let g:ctrlp_map = '<c-p>'

" Tabman
let g:tabman_toggle = '<leader>mt'
let g:tabman_focus  = '<leader>mf'
let g:tabman_width = 25
let g:tabman_side = 'left'

" Filetypes
au BufRead,BufNewFile *.ctp     set filetype=php
au BufRead,BufNewFile /etc/nginx/*	set		ft=nginx

" Default color scheme
highlight Comment ctermfg=darkcyan
highlight Search term=reverse ctermbg=4 ctermfg=7
"let g:solarized_visibility='medium'
"let g:solarized_contrast='normal'
set background=dark
"colorscheme solarized
"colorscheme vividchalk 
"colorscheme hemisu

" Swap files. Generally things are in version control
" don't use backupfiles either.
set noswapfile
set nobackup
set nowritebackup

" Persistent undos
"set undodir=~/.vim/backup
"set undofile

" Autocompletes
autocmd FileType php set omnifunc=phpcomplete#CompletePHP
autocmd FileType html set omnifunc=htmlcomplete#CompleteTags
autocmd FileType js set omnifunc=javascriptcomplete#CompleteJS
autocmd FileType rb set omnifunc=rubycomplete#Complete

" {{{ Filetypes
"
" load the plugin and indent settings for the detected filetype
filetype plugin indent on

" make uses real tabs
au FileType make setl noexpandtab

" Thorfile, Rakefile, Vagrantfile and Gemfile are Ruby
au BufRead,BufNewFile {Gemfile,Rakefile,Vagrantfile,Thorfile,config.ru}    set ft=ruby

" Map .twig files as jinja templates
au BufRead,BufNewFile *.{twig}  set ft=htmljinja

" Map *.coffee to coffee type
au BufRead,BufNewFile *.coffee  set ft=coffee

" Highlight JSON like Javascript
au BufNewFile,BufRead *.json set ft=javascript

" make python follow PEP8 ( http://www.python.org/dev/peps/pep-0008/ )
au FileType python setl softtabstop=4 shiftwidth=4 tabstop=4 textwidth=90 expandtab
au FileType rst setl textwidth=80

" Make ruby use 2 spaces for indentation.
au FileType ruby setl softtabstop=2 tabstop=2 expandtab

" PHP settings
au FileType php setl textwidth=120 softtabstop=4 shiftwidth=4 tabstop=4 noexpandtab

" Javascript settings
au FileType javascript setl textwidth=120 softtabstop=4 shiftwidth=4 tabstop=4 noexpandtab

" Coffeescript uses 2 spaces too.
au FileType coffee setl softtabstop=2 shiftwidth=2 tabstop=2 expandtab

" }}}
