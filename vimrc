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
Bundle 'slim-template/vim-slim'
Bundle 'tpope/vim-git'
Bundle 'Townk/vim-autoclose'
"Bundle 'Lokaltog/vim-powerline'
Bundle 'bling/vim-airline'
Bundle 'tpope/vim-surround'
Bundle 'scrooloose/nerdcommenter'
Bundle 'scrooloose/syntastic'
Bundle 'wincent/Command-T'
Bundle 'othree/html5.vim'
Bundle 'vim-scripts/PDV--phpDocumentor-for-Vim'
Bundle 'janx/vim-rubytest'
Bundle 'noahfrederick/Hemisu'
Bundle 'ap/vim-css-color'
Bundle 'vim-scripts/matchit.zip'
if has("lua")
	Bundle 'Shougo/neocomplete.vim'
else
	Bundle 'Shougo/neocomplcache.vim'
endif
Bundle 'Shougo/neosnippet'
Bundle 'honza/vim-snippets'
Bundle 'kien/ctrlp.vim'
Bundle 'kien/tabman.vim'
Bundle 'vim-scripts/nginx.vim'
Bundle 'mattn/emmet-vim'
Bundle 'tpope/vim-bundler'
Bundle 'airblade/vim-gitgutter'
Bundle 'Yggdroot/indentLine'
Bundle 'mileszs/ack.vim'
Bundle 'rking/ag.vim'
Bundle 'terryma/vim-multiple-cursors'


" Auto NERDTree on startup
"autocmd vimenter * NERDTree

" Toggle NERDTree with \n
map <Leader>n :NERDTreeToggle<CR>
map <F3> :NERDTreeToggle<CR>
" Tabman
map <F4> :TMToggle<CR>
map <F5> :TMFocus<CR>
" Toggle Hex editing
map <F8> :%!xxd<CR>
map <F9> :%!xxd -r<CR>
" vim-rails
map <Leader>rp :Rextract 
map <Leader>rm :Rmodel<CR>
map <Leader>rc :Rcontroller<CR>
map <Leader>rv :Rview<CR>
map <Leader>ra :A<CR>
map <Leader>rr :R<CR>
" Refresh Commmand-T cache
map <Leader>ct :CommandTFlush<CR>
" Clear CtrlP cache
map <Leader>cp :CtrlPClearAllCaches<CR>

syntax on
set fileencodings=utf-8
set fileencoding=utf-8
set encoding=utf-8
set tenc=utf-8
set ruler
set number
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
set foldnestmax=2
set foldlevel=1
let ruby_fold = 1
let php_folding = 1

" Status bar
set laststatus=2
"set statusline=%t\ %y\ format:\ %{&ff};\ [%l,%c]

" Fancy Powerlines
"let g:Powerline_symbols = 'unicode'
let g:Powerline_symbols = 'fancy'

" fix powerline lag: https://powerline.readthedocs.org/en/latest/tipstricks.html
if ! has('gui_running')
	set ttimeoutlen=10
	augroup FastEscape
		autocmd!
		au InsertEnter * set timeoutlen=0
		au InsertLeave * set timeoutlen=1000
	augroup END
endif

" let airline use powerline fancy fonts
let g:airline_powerline_fonts=1
let g:airline_theme='dark'


" ruby path if you are using RVM
" let g:ruby_path = system('rvm current')
let g:ruby_path = system('echo $HOME/.rbenv/shims')

" PHPDoc for Vim: PDV
inoremap <C-G> <ESC>:call PhpDocSingle()<CR>i
nnoremap <C-G> :call PhpDocSingle()<CR>
vnoremap <C-G> :call PhpDocRange()<CR>

" Ctrl-Q to toggle Taglist
nnoremap <C-Q> :TlistToggle<CR>

" Supertabs
"let g:SuperTabDefaultCompletionType = "\<c-x>\<c-o>"

if has("lua")
	" NeoComplete
	" disable AutoComplPop
	let g:acp_enableAtStartup = 0
	let g:neocomplete#enable_at_startup = 1
	let g:neocomplete#enable_smart_case = 1
	let g:neocomplete#sources#syntax#min_keyword_length = 3
	let g:neocomplete#lock_buffer_name_pattern = '\*ku\*'
	inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"
	let g:neocomplete#enable_prefetch = 1  " to keep the cursor from poping menus
	let g:neocomplete#force_overwrite_completefunc = 1 " prevent vim-rails to overwrite, https://github.com/tpope/vim-rails/issues/283
else
	" Use neocomplcache.
	let g:acp_enableAtStartup = 0
	let g:neocomplcache_enable_at_startup = 1
	let g:neocomplcache_enable_smart_case = 1
	let g:neocomplcache_min_syntax_length = 3
	let g:neocomplcache_lock_buffer_name_pattern = '\*ku\*'
	inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"
endif


" RubyTest - change from <Leader>t to <Leader>\
map <Leader>\ <Plug>RubyTestRun

"ctrlp
let g:ctrlp_map = '<c-p>'

" Tabman
let g:tabman_toggle = '<leader>mt'
let g:tabman_focus  = '<leader>mf'
let g:tabman_width = 25
let g:tabman_side = 'left'

" Gitgutter
let g:gitgutter_eager = 0

" Filetypes
au BufRead,BufNewFile *.ctp     set filetype=php.html
au BufRead,BufNewFile /etc/nginx/*	set		ft=nginx
au BufRead,BufNewFile /usr/local/nginx/conf/*	set		ft=nginx

" Default color scheme
highlight Comment ctermfg=darkcyan
highlight Search term=reverse ctermbg=4 ctermfg=7
"let g:solarized_visibility='medium'
"let g:solarized_contrast='normal'
set background=dark
"colorscheme solarized
colorscheme vividchalk

" Swap files. Generally things are in version control
" don't use backupfiles either.
set noswapfile
set nobackup
set nowritebackup

" Neosnippet

" Enable snipMate compatibility feature.
let g:neosnippet#enable_snipmate_compatibility = 1
" Tell Neosnippet about the other snippets
let g:neosnippet#snippets_directory='~/.vim/bundle/vim-snippets/snippets'
" Plugin key-mappings.
imap <C-k>     <Plug>(neosnippet_expand_or_jump)
smap <C-k>     <Plug>(neosnippet_expand_or_jump)
xmap <C-k>     <Plug>(neosnippet_expand_target)
" SuperTab like snippets behavior.
imap <expr><TAB> neosnippet#expandable_or_jumpable() ?
\ "\<Plug>(neosnippet_expand_or_jump)"
\: pumvisible() ? "\<C-n>" : "\<TAB>"
smap <expr><TAB> neosnippet#expandable_or_jumpable() ?
\ "\<Plug>(neosnippet_expand_or_jump)"
\: "\<TAB>"


" Persistent undos
"set undodir=~/.vim/backup
"set undofile

" Autocompletes
autocmd FileType php set omnifunc=phpcomplete#CompletePHP
autocmd FileType html set omnifunc=htmlcomplete#CompleteTags
autocmd FileType js set omnifunc=javascriptcomplete#CompleteJS
autocmd FileType ruby,eruby set omnifunc=rubycomplete#Complete
autocmd FileType ruby,eruby let g:rubycomplete_buffer_loading = 1
autocmd FileType ruby,eruby let g:rubycomplete_rails = 1
autocmd FileType ruby,eruby let g:rubycomplete_classes_in_global = 1

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

" Make eruby filetype also html
au BufNewFile,BufRead *.erb set ft=eruby.html

" make python follow PEP8 ( http://www.python.org/dev/peps/pep-0008/ )
au FileType python setl softtabstop=4 shiftwidth=4 tabstop=4 textwidth=90 expandtab
au FileType rst setl textwidth=80

" Make ruby use 2 spaces for indentation.
au FileType ruby setl softtabstop=2 tabstop=2 shiftwidth=2 expandtab
au FileType eruby setl softtabstop=2 tabstop=2 shiftwidth=2 expandtab

" PHP settings
au FileType php setl textwidth=120 softtabstop=4 shiftwidth=4 tabstop=4 noexpandtab

" Javascript settings
au FileType javascript setl textwidth=120 softtabstop=4 shiftwidth=4 tabstop=4 noexpandtab

" Coffeescript uses 2 spaces too.
au FileType coffee setl softtabstop=2 shiftwidth=2 tabstop=2 expandtab

" }}}
