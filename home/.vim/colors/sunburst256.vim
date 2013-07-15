hi clear
if exists("syntax_on")
  syntax reset
endif

set background=light
let g:colors_name = "sunburst256"
hi Normal                                ctermfg=231    ctermbg=16
hi SpecialKey     cterm=none             ctermfg=21     ctermbg=none
hi NonText        cterm=bold             ctermfg=21     ctermbg=none
hi Directory      cterm=none             ctermfg=21     ctermbg=none
hi ErrorMsg       cterm=none             ctermfg=231    ctermbg=196
hi IncSearch      cterm=reverse          ctermfg=none   ctermbg=none
hi Search         cterm=none             ctermfg=none   ctermbg=226
hi MoreMsg        cterm=bold             ctermfg=29     ctermbg=none
hi ModeMsg        cterm=bold             ctermfg=none   ctermbg=none
hi LineNr         cterm=none             ctermfg=124    ctermbg=none
hi Question       cterm=bold             ctermfg=29     ctermbg=none
hi StatusLine     cterm=bold,reverse     ctermfg=none   ctermbg=none
hi StatusLineNC   cterm=reverse          ctermfg=none   ctermbg=none
hi VertSplit      cterm=reverse          ctermfg=none   ctermbg=none
hi Title          cterm=bold             ctermfg=201    ctermbg=none
hi Visual         cterm=none             ctermfg=none   ctermbg=252
hi VisualNOS      cterm=bold,underline   ctermfg=none   ctermbg=none
hi WarningMsg     cterm=none             ctermfg=196    ctermbg=none
hi WildMenu       cterm=none             ctermfg=16     ctermbg=226
hi Folded         cterm=none             ctermfg=18     ctermbg=252
hi FoldColumn     cterm=none             ctermfg=18     ctermbg=250
hi DiffAdd        cterm=none             ctermfg=none   ctermbg=152
hi DiffChange     cterm=none             ctermfg=none   ctermbg=LightMagenta
hi DiffDelete     cterm=bold             ctermfg=21     ctermbg=195
hi DiffText       cterm=bold             ctermfg=none   ctermbg=196
hi SignColumn     cterm=none             ctermfg=18     ctermbg=250
hi SpellBad       cterm=undercurl        ctermfg=none   ctermbg=196
hi SpellCap       cterm=undercurl        ctermfg=none   ctermbg=21
hi SpellRare      cterm=undercurl        ctermfg=none   ctermbg=201
hi SpellLocal     cterm=undercurl        ctermfg=none   ctermbg=30
hi Pmenu          cterm=none             ctermfg=none   ctermbg=LightMagenta
hi PmenuSel       cterm=none             ctermfg=none   ctermbg=250
hi PmenuSbar      cterm=none             ctermfg=none   ctermbg=250
hi PmenuThumb     cterm=reverse          ctermfg=none   ctermbg=none
hi TabLine        cterm=underline        ctermfg=252    ctermbg=248
hi TabLineSel     cterm=bold             ctermfg=none   ctermbg=none
hi TabLineFill    cterm=reverse          ctermfg=none   ctermbg=none
hi CursorColumn   cterm=none             ctermfg=none   ctermbg=254
hi CursorLine     cterm=none             ctermfg=none   ctermbg=254
hi Cursor         cterm=reverse          ctermfg=none   ctermbg=none
hi lCursor        cterm=reverse          ctermfg=none   ctermbg=none
hi MatchParen     cterm=none             ctermfg=none   ctermbg=51
hi ColorColumn                                          ctermbg=233

hi link railsMethod            PreProc
hi link rubyDefine             Keyword
hi link rubySymbol             Constant
hi link rubyAccess             rubyMethod
hi link rubyAttribute          rubyMethod
hi link rubyEval               rubyMethod
hi link rubyException          rubyMethod
hi link rubyInclude            rubyMethod
hi link rubyStringDelimiter    rubyString
hi link rubyRegexp             Regexp
hi link rubyRegexpDelimiter    rubyRegexp
hi link javascriptRegexpString Regexp
hi link javascriptNumber       Number
hi link javascriptNull         Constant

hi NonText                                    ctermfg=241     ctermbg=16
hi StatusLine                 cterm=bold      ctermfg=231     ctermbg=0
hi StatusLineNC                               ctermfg=248     ctermbg=233
hi Cursor                                     ctermfg=16      ctermbg=248
hi CursorLine                                 ctermfg=NONE    ctermbg=233
hi CursorColumn                               ctermfg=NONE    ctermbg=233
hi Pmenu                                      ctermfg=231     ctermbg=233
hi PmenuSel                                   ctermfg=231     ctermbg=235
hi Todo                       cterm=underline ctermfg=207     ctermbg=16
hi PreProc                                    ctermfg=139
hi Visual                                     ctermbg=235
hi VisualNOS                                  ctermbg=234
hi Comment                                    ctermfg=244
hi Constant                                   ctermfg=33
hi Directory                                  ctermfg=68
hi LineNr                                     ctermfg=241     ctermbg=233
hi Identifier                                 ctermfg=113
hi SpecialKey                                 ctermfg=173
hi Type                                       ctermfg=111
hi Statement                                  ctermfg=173
hi Operator                                   ctermfg=173
hi String                                     ctermfg=70
hi ErrorMsg                                   ctermfg=207     ctermbg=238
hi WarningMsg                cterm=underline  ctermfg=207
hi Regexp                                     ctermfg=173
hi Variable                                   ctermfg=68
hi Special                                    ctermfg=193
hi Title                                      ctermfg=252
hi Search                    cterm=NONE       ctermfg=NONE    ctermbg=236
hi IncSearch                 cterm=NONE       ctermfg=NONE    ctermbg=236
hi rubyInstanceVariable                       ctermfg=68
hi rubyBlockArgument                          ctermfg=68
hi rubyMethod                                 ctermfg=173
hi railsUserMethod                            ctermfg=173
hi railsUserClass                             ctermfg=111
hi javaScriptType                             ctermfg=68
hi javaScriptOpAssign                         ctermfg=173
hi javaScriptFuncName                         ctermfg=68
hi javaScriptComment                          ctermfg=237
hi htmlTag                                    ctermfg=111
hi htmlEndTag                                 ctermfg=111
hi htmlStatement                              ctermfg=111
hi cssClassName                               ctermfg=95
hi cssIdentifier                              ctermfg=103
hi cssBraces                                  ctermfg=252
hi cssTagName                                 ctermfg=179
hi cssPseudoClass                             ctermfg=107
hi cssValueNumber                             ctermfg=173
hi cssValueInteger                            ctermfg=173
hi cssValueLength                             ctermfg=173
hi cssValueFrequency                          ctermfg=173
hi cssValueTime                               ctermfg=173
hi cssValueAngle                              ctermfg=173
hi cssColor                                   ctermfg=173
hi cssCommonAttr                              ctermfg=228
hi cssBoxProp                                 ctermfg=180
hi cssBoxAttr                                 ctermfg=228
hi cssFontProp                                ctermfg=180
hi cssFontAttr                                ctermfg=167
hi cssColorProp                               ctermfg=180
hi cssColorAttr                               ctermfg=167
hi cssTextProp                                ctermfg=180
hi cssTextAttr                                ctermfg=228
hi cssGeneratedContentProp                    ctermfg=180
hi cssGeneratedContentAttr                    ctermfg=228
hi cssPagingProp                              ctermfg=180
hi cssPagingAttr                              ctermfg=228
hi cssUIProp                                  ctermfg=180
hi cssUIAttr                                  ctermfg=228
hi cssRenderProp                              ctermfg=180
hi cssRenderAttr                              ctermfg=228
hi cssAuralProp                               ctermfg=180
hi cssAuralAttr                               ctermfg=228
hi cssTableProp                               ctermfg=180
hi cssTableAttr                               ctermfg=228
hi cssImportant                               ctermfg=167
hi cssFunctionName                            ctermfg=228
hi cssURL                                     ctermfg=68
hi cssMediaType                               ctermfg=167
hi cssMediaComma                              ctermfg=167
hi cssMedia                                   ctermfg=173
hi erubyDelimiter                             ctermfg=252
