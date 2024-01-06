" CTRL-P Config
let g:ctrlp_map = '<Leader>t'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files . -co --exclude-standard']
" let g:ctrlp_match_func = { 'match': 'cpsm#CtrlPMatch' }
let g:ctrlp_custom_ignore = 'vendor/\(bundle\|gems\|cache\|bin\|bundler\|doc\|specifications\|ruby\)'
let g:ctrlp_clear_cache_on_exit = 0
map <Leader>b :CtrlPBuffer<CR>
