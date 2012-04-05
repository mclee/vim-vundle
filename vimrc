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
Bundle 'tpope'vividchalk'
Bundle 'tpope/vim-rails'
Bundle 'vim-scripts/taglist.vom'
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
Bundle 'scrooloose/syntastic'
Bundle 'wincent/Command-T'
Bundle 'othree/html5.vim'
Bundle 'ervandew/supertab'
Bundle 'vim-scripts/PDV--phpDocumentor-for-Vim'
Bundle 'janx/vim-rubytest'
Bundle 'noahfrederick/Hemisu'


" Auto NERDTree on startup
"autocmd vimenter * NERDTree

" Toggle NERDTree with \n
map <Leader>n :NERDTreeToggle<CR>

syntax on
set fileencodings=utf-8
set fileencoding=utf-8
set encoding=utf-8
set tenc=utf-8
set ruler
set cindent
set incsearch
set hls
set t_Co=256


" Whitespace stuff
set tabstop=4
set shiftwidth=4
set softtabstop=4
"set list listchars=tab:▸\ ,eol:¬,trail:·
set noeol
set autoindent

" Window settings
set wrap

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
let g:Powerline_symbols = 'unicode'

" PHPDoc for Vim: PDV
inoremap <C-P> <ESC>:call PhpDocSingle()<CR>i 
nnoremap <C-P> :call PhpDocSingle()<CR> 
vnoremap <C-P> :call PhpDocRange()<CR> 

" Ctrl-Q to toggle Taglist
nnoremap <C-Q> :TlistToggle<CR>

" Supertabs
let g:SuperTabDefaultCompletionType = "\<c-x>\<c-o>"

" RubyTest - change from <Leader>t to <Leader>\
map <Leader>\ <Plug>RubyTestRun

" Filetypes
au BufRead,BufNewFile *.ros     set filetype=php
au BufRead,BufNewFile *.tt2     set filetype=tt2
au BufRead,BufNewFile *.thtml   set filetype=php
au BufRead,BufNewFile *.ctp     set filetype=php

" Default color scheme
" set guifont=Bitstream\ Vera\ Sans\ Mono:h12
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
set undodir=~/.vim/backup
set undofile

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