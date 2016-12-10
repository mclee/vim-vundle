set nocompatible
filetype off

" vundle
set rtp+=~/.vim/bundle/Vundle.vim/
call vundle#begin()

" let Vundle manage Vundle
" required! 
Plugin 'gmarik/Vundle.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'pangloss/vim-javascript'
Plugin 'scrooloose/nerdtree'
Plugin 'tiagofumo/vim-nerdtree-syntax-highlight'
Plugin 'ryanoasis/vim-devicons'
Plugin 'tpope/vim-vividchalk'
Plugin 'tpope/vim-rails'
Plugin 'vim-scripts/taglist.vim'
Plugin 'altercation/vim-colors-solarized'
Plugin 'vim-scripts/ZoomWin'
Plugin 'tpope/vim-markdown'
Plugin 'kchmck/vim-coffee-script'
Plugin 'tpope/vim-ragtag'
Plugin 'tpope/vim-haml'
Plugin 'slim-template/vim-slim'
Plugin 'tpope/vim-git'
Plugin 'Townk/vim-autoclose'
Plugin 'bling/vim-airline'
Plugin 'tpope/vim-surround'
Plugin 'scrooloose/nerdcommenter'
Plugin 'scrooloose/syntastic'
Plugin 'othree/html5.vim'
Plugin 'vim-scripts/PDV--phpDocumentor-for-Vim'
Plugin 'janx/vim-rubytest'
Plugin 'noahfrederick/Hemisu'
Plugin 'ap/vim-css-color'
Plugin 'vim-scripts/matchit.zip'
Plugin 'ervandew/supertab'
if has("lua")
	Plugin 'Shougo/neocomplete.vim'
else
	Plugin 'Shougo/neocomplcache.vim'
endif
" I found neosnippet not quite used to as vim-snipmate
"Plugin 'Shougo/neosnippet.vim'

" For vim-snipmate
Plugin 'MarcWeber/vim-addon-mw-utils'
Plugin 'tomtom/tlib_vim'
Plugin 'garbas/vim-snipmate'
Plugin 'honza/vim-snippets'

Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'kien/tabman.vim'
Plugin 'vim-scripts/nginx.vim'
Plugin 'mattn/emmet-vim'
Plugin 'tpope/vim-bundler'
Plugin 'airblade/vim-gitgutter'
Plugin 'Yggdroot/indentLine'
Plugin 'mileszs/ack.vim'
Plugin 'rking/ag.vim'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'moll/vim-node'
Plugin 'digitaltoad/vim-pug'
Plugin 'skalnik/vim-vroom'
"Plugin 'thoughtbot/vim-rspec'
Plugin 'fatih/vim-go'

"Python related stuff
Plugin 'hynek/vim-python-pep8-indent'
"Plugin 'klen/python-mode'

"JXML
Plugin 'git@github.com:zopim/vim-jxml.git'

call vundle#end()

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
map <Leader>rm :Emodel<CR>
map <Leader>rc :Econtroller<CR>
map <Leader>rv :Eview<CR>
map <Leader>ra :A<CR>
map <Leader>rr :R<CR>
map <Leader>t :CtrlP<CR>
" Clear CtrlP cache
map <Leader>cp :CtrlPClearAllCaches<CR>
map <Leader>ct :CtrlPClearAllCaches<CR>

" Rspec.vim mappings
"map <Leader>r :call RunCurrentSpecFile()<CR>
"map <Leader>rn :call RunNearestSpec()<CR>
"map <Leader>rl :call RunLastSpec()<CR>
"map <Leader>ra :call RunAllSpecs()<CR>

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
"set foldmethod=syntax
set foldmethod=indent
set foldnestmax=2
set foldlevel=1
let ruby_fold = 0
let php_folding = 1

"don't search for include files for completion
"http://stackoverflow.com/questions/2169645/vims-autocomplete-is-excruciatingly-slow
set complete-=i

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

" Neocomplete & neocomplcache

if has("lua")
	" NeoComplete
	" disable AutoComplPop
	let g:acp_enableAtStartup = 0
	let g:neocomplete#enable_at_startup = 1
	let g:neocomplete#disable_auto_complete = 1
	let g:neocomplete#enable_auto_select = 0
	let g:neocomplete#enable_smart_case = 1
	let g:neocomplete#sources#syntax#min_keyword_length = 3
	let g:neocomplete#lock_buffer_name_pattern = '\*ku\*'
	inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"
	let g:neocomplete#enable_prefetch = 1  " to keep the cursor from poping menus
	let g:neocomplete#force_overwrite_completefunc = 1 " prevent vim-rails to overwrite, https://github.com/tpope/vim-rails/issues/283

	"<CR>: close popup and save indent.
	inoremap <expr><CR>  neocomplete#smart_close_popup() . "\<CR>"
	"<TAB>: completion. NO USE with snipmate
	"inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"
	"<C-h>, <BS>: close popup and delete backword char.
	inoremap <expr><C-h> neocomplete#smart_close_popup()."\<C-h>"
	inoremap <expr><BS> neocomplete#smart_close_popup()."\<C-h>"
	inoremap <expr><C-Y>  neocomplete#close_popup()
	inoremap <expr><C-e>  neocomplete#cancel_popup()
	"inoremap <expr><Enter>  pumvisible() ? neocomplcache#close_popup()."\<C-n>" : "\<Enter>"
	inoremap <expr><Enter>  pumvisible() ? "\<C-Y>" : "\<Enter>"

	"autocomplete became too slow, so here's from the  website wiki: https://github.com/Shougo/neocomplcache.vim/wiki/neocomplcache-tips%3A
	"Only process autocomplete on tab
	inoremap <expr><TAB> pumvisible() ? "\<C-n>" : <SID>check_back_space() ? "\<TAB>" : "\<C-x>\<C-u>"
	function! s:check_back_space()"{{{
	let col = col('.') - 1
	return !col || getline('.')[col - 1] =~ '\s'
	endfunction"}}
else
	" Use neocomplcache.
	let g:acp_enableAtStartup = 0
	let g:neocomplcache_disable_auto_complete = 1
	let g:neocomplcache_enable_auto_select = 0
	let g:neocomplcache_enable_at_startup = 1
	let g:neocomplcache_enable_smart_case = 1
	let g:neocomplcache_min_syntax_length = 3
	let g:neocomplcache_lock_buffer_name_pattern = '\*ku\*'
	inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"

	"<CR>: close popup and save indent.
	inoremap <expr><CR>  neocomplcache#smart_close_popup() . "\<CR>"
	"<TAB>: completion. NO USE with snipmate
	"inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"
	"<C-h>, <BS>: close popup and delete backword char.
	inoremap <expr><C-h> neocomplcache#smart_close_popup()."\<C-h>"
	inoremap <expr><BS> neocomplcache#smart_close_popup()."\<C-h>"
	inoremap <expr><C-Y>  neocomplcache#close_popup()
	inoremap <expr><C-e>  neocomplcache#cancel_popup()
	"inoremap <expr><Enter>  pumvisible() ? neocomplcache#close_popup()."\<C-n>" : "\<Enter>"
	inoremap <expr><Enter>  pumvisible() ? "\<C-Y>" : "\<Enter>"
	"autocomplete became too slow, so here's from the  website wiki: https://github.com/Shougo/neocomplcache.vim/wiki/neocomplcache-tips%3A
	"Only process autocomplete on tab
	inoremap <expr><TAB> pumvisible() ? "\<C-n>" : <SID>check_back_space() ? "\<TAB>" : "\<C-x>\<C-u>"
	function! s:check_back_space()"{{{
	let col = col('.') - 1
	return !col || getline('.')[col - 1] =~ '\s'
	endfunction"}}
endif


" RubyTest - change from <Leader>t to <Leader>\
map <Leader>\ <Plug>RubyTestRun

"ctrlp
let g:ctrlp_map = '<c-p>'
set wildignore+=*.so,*.swp,*.zip
let g:ctrlp_custom_ignore = '\v[\/]\.(git|hg|svn)$'
let g:ctrlp_max_files=0
let g:ctrlp_max_depth=100
let g:ctrlp_cache_dir = $HOME . '/.cache/ctrlp'
let g:ctrlp_clear_cache_on_exit = 0
if executable('ag')
  "Use Ag over Grep
  set grepprg=ag\ --nogroup\ --nocolor

  "Use ag in CtrlP for listing files. Lightning fast and respects .gitignore
  let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'
endif

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
" au FileType python setl softtabstop=4 shiftwidth=4 tabstop=4 textwidth=90 expandtab
au FileType python setl softtabstop=0 noexpandtab shiftwidth=4 textwidth=90
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
