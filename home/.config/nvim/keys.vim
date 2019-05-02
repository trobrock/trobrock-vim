" Adds a global snippet for ^L to insert a hash rocket
imap <C-L> <Space>=><Space>

" Disable arrow keys
nnoremap <up> <nop>
nnoremap <down> <nop>
nnoremap <left> <nop>
nnoremap <right> <nop>

" Tabularize Config
"  on first space
vnoremap <leader>tw :Tab/^\s*\zs\S*\ze.*$<cr>

" Hide search highlighting
map <Leader>h :set invhls <CR>

" test.vim bindings
nmap <silent> <leader>r :TestNearest<CR>
nmap <silent> <leader>R :TestFile<CR>
