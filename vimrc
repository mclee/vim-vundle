set nocompatible
filetype off

if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

" Python for neovim
let g:python3_host_prog = '/usr/local/bin/python3'
let g:python_host_prog = '/usr/local/var/pyenv/shims/python2'

call plug#begin('~/.vim/plugged')
Plug 'tpope/vim-fugitive'
Plug 'f-person/git-blame.nvim'
Plug 'pangloss/vim-javascript'
Plug 'ms-jpq/chadtree', {'branch': 'chad', 'do': 'python3 -m chadtree deps'}
Plug 'ryanoasis/vim-devicons'
Plug 'tpope/vim-vividchalk'
Plug 'tpope/vim-rails'
Plug 'tpope/vim-markdown'
Plug 'tpope/vim-dispatch'
Plug 'tpope/vim-tbone'
Plug 'kchmck/vim-coffee-script'
Plug 'tpope/vim-ragtag'
Plug 'tpope/vim-haml'
Plug 'slim-template/vim-slim'
Plug 'Townk/vim-autoclose'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-repeat'
Plug 'scrooloose/nerdcommenter'
Plug 'vim-syntastic/syntastic'
Plug 'othree/html5.vim'
Plug 'janx/vim-rubytest'
Plug 'ap/vim-css-color'
Plug 'adelarsq/vim-matchit'
Plug 'ervandew/supertab'
" telescope
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'} 

" For vim-snipmate
Plug 'MarcWeber/vim-addon-mw-utils'
Plug 'tomtom/tlib_vim'
Plug 'garbas/vim-snipmate'
Plug 'honza/vim-snippets'

Plug 'ctrlpvim/ctrlp.vim'
Plug 'majutsushi/tagbar'
Plug 'chr4/nginx.vim'
Plug 'mattn/emmet-vim'
Plug 'tpope/vim-bundler'
Plug 'airblade/vim-gitgutter'
Plug 'Yggdroot/indentLine'
Plug 'Yggdroot/hiPairs'
Plug 'mileszs/ack.vim'
Plug 'rking/ag.vim'
Plug 'terryma/vim-multiple-cursors'
Plug 'moll/vim-node'
Plug 'digitaltoad/vim-pug'
Plug 'skalnik/vim-vroom'
Plug 'fatih/vim-go'
Plug 'rainerborene/vim-reek'

" Rust
Plug 'rust-lang/rust.vim'

"Python related stuff
Plug 'python-mode/python-mode'
Plug 'nvie/vim-flake8'
"Plug 'davidhalter/jedi-vim'

"JXML
Plug 'git@github.com:zopim/vim-jxml.git'

"React related
Plug 'MaxMEllon/vim-jsx-pretty'

"PR Reviews
Plug 'junkblocker/patchreview-vim'
Plug 'codegram/vim-codereview'

" fancy searchers
set rtp+=~/.fzf
Plug 'junegunn/fzf'
Plug 'junegunn/fzf.vim'
Plug 'jremmen/vim-ripgrep'

" barbar
Plug 'kyazdani42/nvim-web-devicons'
Plug 'romgrk/barbar.nvim'

call plug#end()

" Toggle CHADTree with \n
map <Leader>n :CHADopen<CR>
map <F3> :CHADopen<CR>

" Toggle git-blame.nvim
nnoremap <F4> <CMD>GitBlameToggle<CR>
let g:gitblame_enabled = 0

map <Leader>te :tabe<CR>

" Toggle Hex editing
map <F8> :%!xxd<CR>
map <F9> :%!xxd -r<CR>
" Tagbar
map <Leader>g :TagbarToggle<CR>

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
map <Leader>rg yiw:Rg <C-R>0<CR>

" telescope
nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>flg <cmd>Telescope live_grep<cr>
nnoremap <leader>fgf <cmd>Telescope git_files<cr>
nnoremap <leader>fb <cmd>Telescope file_browser<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>

" Rspec.vim mappings
"map <Leader>r :call RunCurrentSpecFile()<CR>
"map <Leader>rn :call RunNearestSpec()<CR>
"map <Leader>rl :call RunLastSpec()<CR>
"map <Leader>ra :call RunAllSpecs()<CR>

" FZF
map <Leader>z :FZF<CR>

" Rust
map <Leader>rf :RustFmt<CR>

" barbar.nvim
" Move to previous/next
nnoremap <Leader>, :BufferPrevious<CR>
nnoremap <Leader>. :BufferNext<CR>
" Re-order to previous/next
nnoremap <Leader>t< :BufferMovePrevious<CR>
nnoremap <Leader>t> :BufferMoveNext<CR>
nnoremap <Leader>t1 :BufferGoto 1<CR>
nnoremap <Leader>t2 :BufferGoto 2<CR>
nnoremap <Leader>t3 :BufferGoto 3<CR>
nnoremap <Leader>t4 :BufferGoto 4<CR>
nnoremap <Leader>t5 :BufferGoto 5<CR>
nnoremap <Leader>t6 :BufferGoto 6<CR>
nnoremap <Leader>t7 :BufferGoto 7<CR>
nnoremap <Leader>t8 :BufferGoto 8<CR>
nnoremap <Leader>t9 :BufferLast<CR>
" Pin/unpin buffer
nnoremap <Leader>tp :BufferPin<CR>
" Close buffer
nnoremap <Leader>tc :BufferClose<CR>

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

" rust.vim autosave into RustFmt
let g:rustfmt_autosave = 1

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
if executable('rg')
  "Use Ag over Grep
  set grepprg=rg\ --color=never

  "Use rg in CtrlP for listing files. Lightning fast and respects .gitignore
  let g:ctrlp_user_command = 'rg %s --files --color=never --glob ""'
  let g:ctrlp_use_caching = 0
endif

" ripgrep
let g:rg_binary = '/usr/local/bin/rg'
let g:rg_highlight = 'true'

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

" For conceal markers.
if has('conceal')
  set conceallevel=2 concealcursor=niv
endif

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
