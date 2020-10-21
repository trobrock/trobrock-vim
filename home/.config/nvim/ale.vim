" ALE Config
let g:ale_fixers = {
    \'*': ['remove_trailing_lines', 'trim_whitespace'],
    \'javascript': ['prettier', 'eslint'],
    \'ruby': ['rubocop'],
    \'terraform': ['terraform'],
    \'python': ['black'],
    \'scss': ['stylelint'],
    \'css': ['stylelint'],
    \}
let g:ale_fix_on_save = 1
let g:ale_javascript_prettier_options = '--single-quote --trailing-comma es5 --arrow-parens avoid --print-width 100'
