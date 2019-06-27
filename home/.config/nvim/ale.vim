" ALE Config
let g:ale_fixers = {
  	\'*': ['remove_trailing_lines', 'trim_whitespace'],
  	\'javascript': ['eslint', 'prettier'],
  	\'ruby': ['rubocop'],
  	\'terraform': ['terraform'],
  	\'python': ['black'],
  	\'scss': ['stylelint'],
  	\}
let g:ale_fix_on_save = 1
