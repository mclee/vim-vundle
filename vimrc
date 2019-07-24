set nocompatible
filetype off

" vundle
set rtp+=~/.vim/bundle/Vundle.vim/
call vundle#begin()

" let Vundle manage Vundle
" required! 
Plugin 'VundleVim/Vundle.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'pangloss/vim-javascript'
Plugin 'scrooloose/nerdtree'
Plugin 'Xuyuanp/nerdtree-git-plugin'
Plugin 'tiagofumo/vim-nerdtree-syntax-highlight'
Plugin 'ryanoasis/vim-devicons'
Plugin 'tpope/vim-vividchalk'
Plugin 'tpope/vim-rails'
Plugin 'tpope/vim-markdown'
Plugin 'kchmck/vim-coffee-script'
Plugin 'tpope/vim-ragtag'
Plugin 'tpope/vim-haml'
Plugin 'slim-template/vim-slim'
Plugin 'tpope/vim-git'
Plugin 'Townk/vim-autoclose'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-repeat'
Plugin 'scrooloose/nerdcommenter'
Plugin 'vim-syntastic/syntastic'
Plugin 'othree/html5.vim'
Plugin 'janx/vim-rubytest'
Plugin 'ap/vim-css-color'
Plugin 'adelarsq/vim-matchit'
if has("lua")
	Plugin 'Shougo/neocomplete.vim'
else
	Plugin 'Shougo/neocomplcache.vim'
endif
" I found neosnippet not quite used to as vim-snipmate
Plugin 'Shougo/neosnippet.vim'
Plugin 'Shougo/neosnippet-snippets'

" For vim-snipmate
"Plugin 'MarcWeber/vim-addon-mw-utils'
"Plugin 'tomtom/tlib_vim'
"Plugin 'garbas/vim-snipmate'
Plugin 'honza/vim-snippets'

Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'kien/tabman.vim'
Plugin 'majutsushi/tagbar'
Plugin 'chr4/nginx.vim'
Plugin 'mattn/emmet-vim'
Plugin 'tpope/vim-bundler'
Plugin 'airblade/vim-gitgutter'
Plugin 'Yggdroot/indentLine'
Plugin 'Yggdroot/hiPairs'
Plugin 'mileszs/ack.vim'
Plugin 'rking/ag.vim'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'moll/vim-node'
Plugin 'digitaltoad/vim-pug'
Plugin 'skalnik/vim-vroom'
Plugin 'fatih/vim-go'
Plugin 'rust-lang/rust.vim'
Plugin 'rainerborene/vim-reek'

"Python related stuff
Plugin 'python-mode/python-mode'
Plugin 'nvie/vim-flake8'
"Plugin 'davidhalter/jedi-vim'

"JXML
Plugin 'git@github.com:zopim/vim-jxml.git'

"React related
Plugin 'MaxMEllon/vim-jsx-pretty'

"PR Reviews
Plugin 'junkblocker/patchreview-vim'
Plugin 'codegram/vim-codereview'

" fancy searchers
set rtp+=~/.fzf
Plugin 'junegunn/fzf'
Plugin 'junegunn/fzf.vim'
Plugin 'jremmen/vim-ripgrep'

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

" Github code review stuff
map <Leader>gr :CodeReview
map <Leader>gcc :CodeReviewCommentChange<CR>
map <Leader>gcr :CodeReviewComment<CR>
map <Leader>glc :CodeReviewReloadComments<CR>

" map something to search faster for current keyword
map <Leader>ag yiw:Ag <C-R>0<CR>

" Rspec.vim mappings
"map <Leader>r :call RunCurrentSpecFile()<CR>
"map <Leader>rn :call RunNearestSpec()<CR>
"map <Leader>rl :call RunLastSpec()<CR>
"map <Leader>ra :call RunAllSpecs()<CR>

" FZF
map <Leader>f :FZF<CR>
map <Leader>z :FZF<CR>

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
"set nofoldenable

" Window settings
set wrap
set lbr
set cursorline
set title
"set visualbell
"set noerrorbells

" Share Mac clipboard
set clipboard=unnamed

" set folding
set foldmethod=syntax
"set foldmethod=indent
set foldnestmax=2
set foldlevel=1
let ruby_fold = 0
let php_folding = 1

"don't search for include files for completion
"http://stackoverflow.com/questions/2169645/vims-autocomplete-is-excruciatingly-slow
set complete-=i

" diable highlight temporarily
map <Leader>h :nohlsearch<CR>

" if opened file without sudo priv, use tee
cmap w!! w !sudo tee % > /dev/null

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
let g:syntastic_ruby_checkers = ['rubocop', 'mri']
let g:syntastic_ruby_rubocop_exec = system('echo $HOME/.rbenv/shims/rubocop')

" linters for javascript
let g:syntastic_javascript_checkers = ['jshint', 'jsxhint', 'eslint']

" PHPDoc for Vim: PDV
inoremap <C-G> <ESC>:call PhpDocSingle()<CR>i
nnoremap <C-G> :call PhpDocSingle()<CR>
vnoremap <C-G> :call PhpDocRange()<CR>

" Ctrl-Q to toggle Taglist
nnoremap <C-Q> :TlistToggle<CR>

" Syntastic
let g:syntastic_python_checkers = ['flake8']
let g:syntastic_python_flake8_args='--ignore=W191,E101,E127,E128,C0103,E117'

" Flake8
let g:flake8_show_in_gutter=1

" vim-multiple-cursors
let g:multi_cursor_quit_key = '<Esc>'

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
	inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"
	"<C-h>, <BS>: close popup and delete backword char.
	inoremap <expr><C-h> neocomplete#smart_close_popup()."\<C-h>"
	inoremap <expr><BS> neocomplete#smart_close_popup()."\<C-h>"
	inoremap <expr><C-Y>  neocomplete#close_popup()
	inoremap <expr><C-e>  neocomplete#cancel_popup()
	"inoremap <expr><Enter>  pumvisible() ? neocomplcache#close_popup()."\<C-n>" : "\<Enter>"
	inoremap <expr><Enter>  pumvisible() ? "\<C-Y>" : "\<Enter>"
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
  let g:ctrlp_use_caching = 0
endif

" ripgrep
let g:rg_binary = '/usr/local/bin/rg'

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
colorscheme vividchalk

" Swap files. Generally things are in version control
" don't use backupfiles either.
set noswapfile
set nobackup
set nowritebackup

" Neosnippet
" Plugin key-mappings.
" Note: It must be "imap" and "smap".  It uses <Plug> mappings.
imap <C-k>     <Plug>(neosnippet_expand_or_jump)
smap <C-k>     <Plug>(neosnippet_expand_or_jump)
xmap <C-k>     <Plug>(neosnippet_expand_target)

" SuperTab like snippets behavior.
" Note: It must be "imap" and "smap".  It uses <Plug> mappings.
imap <C-k>     <Plug>(neosnippet_expand_or_jump)
smap <expr><TAB> neosnippet#expandable_or_jumpable() ?
\ "\<Plug>(neosnippet_expand_or_jump)" : "\<TAB>"

" For conceal markers.
if has('conceal')
  set conceallevel=2 concealcursor=niv
endif

" Enable snipMate compatibility feature.
let g:neosnippet#enable_snipmate_compatibility = 1
" Tell Neosnippet about the other snippets
let g:neosnippet#snippets_directory='~/.vim/bundle/vim-snippets/snippets'
" use rails + ruby for 'ruby' type
let g:neosnippet#scope_aliases = {}
let g:neosnippet#scope_aliases['ruby'] = 'ruby,rails'
let g:neosnippet#scope_aliases['python'] = 'python,django'

" python-mode
let g:pymode_lint_ignore = 'W191,E101,E127,E128,C0103,E117'
map <Leader>pl :PymodeLint<CR>

" Persistent undos
"set undodir=~/.vim/backup
"set undofile

" Autocompletes
autocmd FileType php set omnifunc=phpcomplete#CompletePHP
autocmd FileType html set omnifunc=htmlcomplete#CompleteTags
autocmd FileType js set omnifunc=javascriptcomplete#CompleteJS
autocmd FileType ruby,eruby set omnifunc=rubycomplete#Complete
autocmd FileType python set omnifunc=pythoncomplete#Complete
autocmd FileType ruby,eruby let g:rubycomplete_buffer_loading = 1
autocmd FileType ruby,eruby let g:rubycomplete_rails = 1
autocmd FileType ruby,eruby let g:rubycomplete_classes_in_global = 1

" load the plugin and indent settings for the detected filetype
filetype plugin indent on

" make uses real tabs
au FileType make setl noexpandtab

" Thorfile, Rakefile, Vagrantfile and Gemfile are Ruby
au BufRead,BufNewFile {Gemfile,Rakefile,Vagrantfile,Thorfile,config.ru}    set ft=ruby
au BufRead,BufNewFile *.rb set ft=ruby

" Map .twig files as jinja templates
au BufRead,BufNewFile *.{twig}  set ft=htmljinja

" Map *.coffee to coffee type
au BufRead,BufNewFile *.coffee  set ft=coffee

" Highlight JSON like Javascript
au BufNewFile,BufRead *.json set ft=javascript

" Make eruby filetype also html
au BufNewFile,BufRead *.erb set ft=eruby.html

" Map *.py to python type
au BufNewFile,BufRead *.py set ft=python
" make python follow PEP8 ( http://www.python.org/dev/peps/pep-0008/ )
"au FileType python setl softtabstop=4 shiftwidth=4 tabstop=4 textwidth=90 expandtab
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
