" defx.nvim Config
function! s:defx_my_settings() abort
  " Enter directory or open file in current
  nnoremap <silent><buffer><expr> <CR>
  \ defx#do_action('drop')
  " Change up a directory
  nnoremap <silent><buffer><expr> h
  \ defx#do_action('cd', ['..'])
  " Change to CWD
  nnoremap <silent><buffer><expr> \
  \ defx#do_action('cd', getcwd())
  " Copy
  nnoremap <silent><buffer><expr> c
  \ defx#do_action('copy')
  nnoremap <silent><buffer><expr> m
  \ defx#do_action('move')
  nnoremap <silent><buffer><expr> p
  \ defx#do_action('paste')
  nnoremap <silent><buffer><expr> r
  \ defx#do_action('rename')
  nnoremap <silent><buffer><expr> d
  \ defx#do_action('remove')

  " Open file in vsplit
  nnoremap <silent><buffer><expr> E
  \ defx#do_action('open', 'vsplit')

  " Create directory
  nnoremap <silent><buffer><expr> K
  \ defx#do_action('new_directory')
  " Create files
  nnoremap <silent><buffer><expr> N
  \ defx#do_action('new_multiple_files')

  " Show size info, etc
  nnoremap <silent><buffer><expr> C
  \ defx#do_action('toggle_columns', 'mark:filename:type:size:time')

  nnoremap <silent><buffer><expr> .
  \ defx#do_action('toggle_ignored_files')
  nnoremap <silent><buffer><expr> yy
  \ defx#do_action('yank_path')
  nnoremap <silent><buffer><expr> q
  \ defx#do_action('quit')
  nnoremap <silent><buffer><expr> <Space>
  \ defx#do_action('toggle_select') . 'j'
  nnoremap <silent><buffer><expr> *
  \ defx#do_action('toggle_select_all')
  nnoremap <silent><buffer><expr> j
  \ line('.') == line('$') ? 'gg' : 'j'
  nnoremap <silent><buffer><expr> k
  \ line('.') == 1 ? 'G' : 'k'
endfunction

autocmd FileType defx call s:defx_my_settings()

nmap <leader>n :Defx<cr>
