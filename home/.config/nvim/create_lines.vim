function! s:BlankUp(count) abort
  put!=repeat(nr2char(10), a:count)
  ']+1
  silent! call repeat#set("\<Plug>unimpairedBlankUp", a:count)
endfunction

function! s:BlankDown(count) abort
  put =repeat(nr2char(10), a:count)
  '[-1
  silent! call repeat#set("\<Plug>unimpairedBlankDown", a:count)
endfunction

nnoremap [<Space> :<C-U>call <SID>BlankUp(v:count1)<CR>
nnoremap ]<Space> :<C-U>call <SID>BlankDown(v:count1)<CR>
