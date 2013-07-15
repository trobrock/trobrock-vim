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
" Gist
Bundle "mattn/gist-vim"
" GitGutter
Bundle "airblade/vim-gitgutter"
" Mustache
Bundle "juvenn/mustache.vim"
" Handlebars
Bundle "nono/vim-handlebars"
" Treetop
Bundle "nanki/treetop.vim"
" Coffeescript
Bundle "kchmck/vim-coffee-script"
" Thrift
Bundle "sprsquish/thrift.vim"
" Rust support
Bundle "wting/rust.vim"
" Erlang support
Bundle "jimenezrick/vimerl"
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

" Configure ruby test
map <unique> <Leader>r <Plug>RubyTestRun
map <unique> <Leader>R <Plug>RubyFileRun
let g:rubytest_cmd_testcase = "ruby '%p' -n '/%c/'"

" Configure GitGutter
let g:gitgutter_eager = 0

" allow backspacing over everything in insert mode
set backspace=indent,eol,start

set nobackup
set nowritebackup
set history=50 " keep 50 lines of command line history
set ruler      " show the cursor position all the time
set showcmd    " display incomplete commands
set incsearch  " do incremental searching

" Color scheme
set t_Co=256 " Set 256 colors
colorscheme solarized
set background=dark
set guifont=Bitstream\ Vera\ Sans\ Mono:h14

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

" Show a vertical line/guard at column 120
if exists('+colorcolumn')
  set colorcolumn=120
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
  au! BufNewFile,BufRead *.bats      setfiletype sh
  au! BufNewFile,BufRead *.txt      setfiletype text
  au! BufNewFile,BufRead *.ejs      setfiletype html
  au! BufNewFile,BufRead *.thrift   setfiletype thrift
  au! BufNewFile,BufRead *.god      setfiletype ruby
  au! BufNewFile,BufRead *.hamlbars setfiletype haml
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

  " Jump to the right place when editing mail in mutt
  autocmd BufRead mutt* execute 'normal gg6jo'
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
set statusline=%<\ %n:%f\ %y\ %{fugitive#statusline()}\ %m%r%=%-35.(line:\ %l\ of\ %L,\ col:\ %c%V\ (%P)%)

" CTRL-F will run Ag for global search
map <C-F> :Ag!<Space>

" Will trim all whitespace off the end of each line
command! Respace %s/\(\s\+\)\(\n\)/\2/

" Use system clipboard
set clipboard=unnamed

" Line numbers
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
