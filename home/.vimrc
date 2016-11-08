" based on http://github.com/jferris/config_files/blob/master/vimrc

" Use Vim settings, rather then Vi settings (much better!).
" This must be first, because it changes other options as a side effect.
set nocompatible

" Required by vundle
filetype off

" Setup vundle
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" Vundle
Bundle 'gmarik/vundle'
" Sensible defaults
Bundle "tpope/vim-sensible"
" Fuzzy file search
Bundle "kien/ctrlp.vim"
" File tree explorer
Bundle "scrooloose/nerdtree"
" Text filtering and alignment
Bundle "godlygeek/tabular"
" Silver Searcher requires 'brew install the_silver_searcher'
Bundle "rking/ag.vim"
" Git integration
Bundle "tpope/vim-fugitive"
" Easy code commenting
Bundle "tpope/vim-commentary"
" Surround things with other things
Bundle "tpope/vim-surround"
" Add your ends
Bundle "tpope/vim-endwise"
" Paired helpers for repetitive commands
Bundle "tpope/vim-unimpaired"
" Run ruby tests
Bundle "janx/vim-rubytest"
" Markdown
Bundle "tpope/vim-markdown"
" HAML, Sass, SCSS
Bundle "tpope/vim-haml"
" Handlebars
Bundle "mustache/vim-mustache-handlebars"
" JSX
Bundle 'mxw/vim-jsx'
" Javascript
Bundle "othree/yajs.vim"
" Coffeescript
Bundle "kchmck/vim-coffee-script"
" Ruby support
Bundle "vim-ruby/vim-ruby"
" Emblem.js support
Bundle "heartsentwined/vim-emblem"
" API Blueprint support
Bundle "kylef/apiblueprint.vim"
" Swift support
Bundle "keith/swift.vim"
" Rubocop support
Bundle "ngmy/vim-rubocop"
" Syntastic
Bundle "scrooloose/syntastic"
" Solarized theme
Bundle "andrewkatz/vim-colors-solarized"

" Globally ignore files and directories
set wildignore+=**/log/**,*.orig,*.swp,*.rbc,*.pyc

" Configure ctrlp
let g:ctrlp_map = '<Leader>t'
let g:ctrlp_cmd = 'CtrlP'
" let g:ctrlp_clear_cache_on_exit = 0
let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files . -co --exclude-standard']
let g:ctrlp_custom_ignore = 'vendor/\(gems\|cache\|bin\|bundler\|doc\|specifications\|ruby\)'
map <Leader>b :CtrlPBuffer<CR>

" Enable JSX in JS
let g:jsx_ext_required = 0

" Configure ruby test
map <unique> <Leader>r <Plug>RubyTestRun
map <unique> <Leader>R <Plug>RubyFileRun
let g:rubytest_cmd_testcase = "ruby '%p' -n '/%c/'"
let g:rubytest_cmd_example = "rspec '%p:%c'"

" Configure Syntastic
let g:syntastic_mode_map = { 'mode': 'active', 'active_filetypes': [], 'passive_filetypes': [ 'html' ] }
let g:syntastic_ruby_rubocop_exec = './.bin/rubocop'
let g:syntastic_ruby_checkers = ['mri', 'rubocop']
let g:syntastic_coffee_coffeelint_args = "--csv --file .coffeescript-style.json"
let g:syntastic_scss_checkers = ['scss_lint']
let g:syntastic_scss_scss_list_args = "-c .scss-style.yml"
let g:syntastic_check_on_wq = 0
let g:syntastic_aggregate_errors = 1
map <Leader>s :SyntasticToggleMode<CR>

if executable('./node_modules/.bin/eslint')
  let g:syntastic_javascript_eslint_exec = './node_modules/.bin/eslint'
  let g:syntastic_javascript_checkers = ['eslint']
else
  let g:syntastic_javascript_checkers = ['jshint']
endif

" allow backspacing over everything in insert mode
set backspace=indent,eol,start

set nobackup
set nowritebackup
set history=50 " keep 50 lines of command line history
set ruler      " show the cursor position all the time
set showcmd    " display incomplete commands
set incsearch  " do incremental searching
set dir=~/.vim/swap//,/var/tmp//,/tmp//,.

" Color scheme
set t_Co=256 " Set 256 colors
colorscheme solarized
set background=dark

" change status bar based on current mode
if version >= 700
  au InsertEnter * hi StatusLine ctermfg=2 ctermbg=16
  au InsertLeave * hi StatusLine ctermbg=222 ctermfg=240
endif

" Switch syntax highlighting on, when the terminal has colors
" Also switch on highlighting the last used search pattern.
if (&t_Co > 2 || has("gui_running")) && !exists("syntax_on")
  syntax on
  set hlsearch
endif

" Show a vertical line/guard at column 100
if exists('+colorcolumn')
  set colorcolumn=100
endif

" Configure characters for hidden characters
set list listchars=eol:¬,tab:»·,trail:·

" Switch wrap off for everything
set nowrap

" Only do this part when compiled with support for autocommands.
if has("autocmd")
  " Enable file type detection.
  " Use the default filetype settings, so that mail gets 'tw' set to 72,
  " 'cindent' is on in C files, etc.
  " Also load indent files, to automatically do language-dependent indenting.
  filetype plugin indent on

  " Set file type for unknown files
  au! BufNewFile,BufRead *.txt      setfiletype text
  au! BufNewFile,BufRead *.ejs      setfiletype html
  au! BufNewFile,BufRead *.thrift   setfiletype thrift
  au! BufNewFile,BufRead Gemfile    setfiletype ruby

  " Enable soft-wrapping for text files
  autocmd FileType text,markdown,html,xhtml,eruby setlocal wrap linebreak nolist

  " When editing a file, always jump to the last known cursor position.
  " Don't do it when the position is invalid or when inside an event handler
  " (happens when dropping a file on gvim).
  autocmd BufReadPost *
    \ if line("'\"") > 0 && line("'\"") <= line("$") |
    \   exe "normal g`\"" |
    \ endif

  " Ruby speed
  autocmd FileType ruby setlocal re=1 ttyfast
else
  set autoindent    " always set autoindenting on
endif

" Softtabs, 2 spaces
set tabstop=2
set shiftwidth=2
set expandtab

" Always display the status line
set laststatus=2

" \ is the leader character
let mapleader = "\\"

" Hide search highlighting
map <Leader>h :set invhls <CR>

" Adds a global snippet for ^L to insert a hash rocket
imap <C-L> <Space>=><Space>

" Tab completion options
" (only complete to the longest unambiguous match, and show a menu)
set completeopt=longest,menu
set wildmode=list:longest,list:full
set complete=.,w,b,u

" case only matters with mixed case expressions
set ignorecase
set smartcase

" Set a custom status line to include the current Git branch
func! SyntaxItem()
  if exists("g:syntax_item_enabled") && g:syntax_item_enabled == 1
    return "[" . synIDattr(synID(line('.'),col('.'),1),'name') . "]"
  else
    return ""
  endif
endfunc
func! ToggleSyntaxItem()
  if exists("g:syntax_item_enabled") && g:syntax_item_enabled == 1
    let g:syntax_item_enabled = 0
  elseif !exists("g:syntax_item_enabled") || g:syntax_item_enabled == 0
    let g:syntax_item_enabled = 1
  endif
endfunc
map <Leader>S :call ToggleSyntaxItem()<CR>
set statusline=%n:%f\ %y\ %{fugitive#statusline()}\ %m%r%=%{SyntaxItem()}\ line:\ %l\ of\ %L,\ col:\ %c%V\ (%P)

" CTRL-F will run Ag for global search
map <C-F> :Ag!<Space>

" Will trim all whitespace off the end of each line
command! Respace %s/\(\s\+\)\(\n\)/\2/

" Use system clipboard
set clipboard=unnamed

" Line numbers
set number
set relativenumber

" Highlight cursor line number
set cursorline

" Disable arrow keys
nnoremap <up> <nop>
nnoremap <down> <nop>
nnoremap <left> <nop>
nnoremap <right> <nop>

" Project specific vimrc
set exrc
set secure

" Tabularize on first space
vnoremap <leader>tw :Tab/^\s*\zs\S*\ze.*$<cr>

nmap <leader>n :NERDTreeToggle<cr>

" inoremap <silent> = =<Esc>:call <SID>ealign()<CR>a
" function! s:ealign()
"   let p = '^.*=\s.*$'
"   if exists(':Tabularize') && getline('.') =~# p && (getline(line('.')-1) =~# p || getline(line('.')+1) =~# p)
"     let column = strlen(substitute(getline('.')[0:col('.')],'[^=]','','g'))
"     let position = strlen(matchstr(getline('.')[0:col('.')],'.*=\s*\zs.*'))
"     Tabularize/=/l1
"     normal! 0
"     call search(repeat('[^=]*=',column).'\s\{-\}'.repeat('.',position),'ce',line('.'))
"   endif
" endfunction
