" Better grep
if executable('ag')
set grepprg=ag\ --nogroup\ --nocolor
endif
"  'K' on a word will search for that word
nnoremap K :grep! "\b<C-R><C-W>\b"<CR>:cw<CR>
"  CTRL-F will start a search
map <C-F> :grep<Space>

augroup qf
    autocmd!
    autocmd QuickFixCmdPost [^l]* cwindow
    autocmd QuickFixCmdPost l*    cwindow
    autocmd VimEnter        *     cwindow
augroup END
