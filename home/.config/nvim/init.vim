if &compatible
set nocompatible
endif
" Add the dein installation directory into runtimepath
set runtimepath+=~/.cache/dein/repos/github.com/Shougo/dein.vim

if dein#load_state('~/.cache/dein')
call dein#begin('~/.cache/dein')

call dein#add('~/.cache/dein/repos/github.com/Shougo/dein.vim')
call dein#add('Shougo/deoplete.nvim')
if !has('nvim')
  call dein#add('roxma/nvim-yarp')
  call dein#add('roxma/vim-hug-neovim-rpc')
endif

" vim-sensible, sensible defaults
call dein#add('tpope/vim-sensible')
" CTRL-P
call dein#add('ctrlpvim/ctrlp.vim')
call dein#add('nixprime/cpsm', {'build': 'sh -c "PY3=ON ./install.sh"'})
" defx.nvim, file explorer
call dein#add('Shougo/defx.nvim')
" Tabular, align stuff
call dein#add('godlygeek/tabular')
" Fugitive.vim, git integration
call dein#add('tpope/vim-fugitive')
" Commentary, easily comment and un-comment
call dein#add('tpope/vim-commentary')
" Endwise, literally just add ends in ruby :facepalm:
call dein#add('tpope/vim-endwise', {'on_ft': ['ruby']})
" Run tests
call dein#add('janko-m/vim-test')
" ALE, Linter and Formatter
call dein#add('w0rp/ale')
" Useful pairs of keymappings
call dein#add('tpope/vim-unimpaired')

" THEMES
"    solarized
call dein#add('lifepillar/vim-solarized8')
call dein#add('andrewkatz/vim-colors-solarized')

" SYNTAX
"    Markdown
call dein#add('plasticboy/vim-markdown')
"    API Blueprint
call dein#add('kylef/apiblueprint.vim')
"    Terraform
call dein#add('hashivim/vim-terraform')
"    JSX
call dein#add('mxw/vim-jsx')

call dein#end()
call dein#save_state()
endif

source ~/.config/nvim/ale.vim
source ~/.config/nvim/autocomplete.vim
source ~/.config/nvim/clipboard.vim
source ~/.config/nvim/ctrlp.vim
source ~/.config/nvim/defx.vim
source ~/.config/nvim/grep.vim
source ~/.config/nvim/keys.vim
source ~/.config/nvim/per_project.vim

" Markdown Config
let g:vim_markdown_folding_disabled = 1

" Terraform Config
let g:terraform_align=1

" Gutter, numbers and stuff
set number
set relativenumber

" allow backspacing over everything in insert mode
set backspace=indent,eol,start

set nobackup
set nowritebackup
set history=50 " keep 50 lines of command line history
set ruler     " show the cursor position all the time
set showcmd   " display incomplete commands
set incsearch  " do incremental searching
set dir=~/.vim/swap//,/var/tmp//,/tmp//,.

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

" Softtabs, 2 spaces
set tabstop=2
set shiftwidth=2
set expandtab

" Always display the status line
set laststatus=2

" \ is the leader character
let mapleader = "\\"

" case only matters with mixed case expressions
set ignorecase
set smartcase

" Highlight cursor line number
set cursorline

" Theme
set termguicolors
colorscheme solarized8
set background=dark

" Status Line
set statusline=%n:%f\ %y\ %{fugitive#statusline()}\ %m%=line:\ %l\ of\ %L,\ col:\ %c%V\ (%P)

" Enable soft-wrapping for text files
autocmd FileType text,markdown,html,xhtml,eruby setlocal wrap linebreak nolist

" When editing a file, always jump to the last known cursor position.
" Don't do it when the position is invalid or when inside an event handler
" (happens when dropping a file on gvim).
autocmd BufReadPost *
  \ if line("'\"") > 0 && line("'\"") <= line("$") |
  \   exe "normal g`\"" |
  \ endif

" Ruby performance
autocmd FileType ruby setlocal re=1 ttyfast

" Make CTRL-o exit insert mode in terminal
if has('nvim')
  tmap <C-o> <C-\><C-n>
endif
