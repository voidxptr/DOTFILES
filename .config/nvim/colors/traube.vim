if !has('gui_is_running') && &t_Co < 256
    finish
endif

set background=dark

hi clear

if exists('syntax_on')
    syntax reset
endif

let g:colors_name = 'traube'

" Purple    : #d389ed
" Blue      : #89b3ed
" Yellow    : #eddd89
" Green     : #89ed9e
" DarkGrenn : #79dd8d
" Pink      : #ed89be
" Red       : #d73c3c
" Cherryi   : #671448

" Cyan      : #92eddf


hi! Normal          guibg=#1f1d1f guifg=#dce9e8
hi! EndOfBuffer     guibg=#1f1d1f guifg=#dce9e8

hi! Error           guifg=#d73c3c

hi! Constant        guifg=#eddd89

hi! Identifier      guifg=#89b3ed

hi! Statement       guifg=#b0b8ff

hi! Function        guifg=#ed89be

hi! Type            guifg=#d389ed

hi! Special         guifg=#89ed9e
hi! PreProc         guifg=#89ed9e


hi! LineNr          guibg=#1f1d1f guifg=#79dd8d
hi! LineNrAbove     guifg=#c7dbb1
hi! LineNrBelow     guifg=#c7dbb1
hi! StatusLine      guibg=#2c2d36
hi! ColorColumn     guibg=#d389ed

hi! FoldColumn      guibg=#1f1d1f guifg=#79dd8d

hi! Cursor          guibg=#92eddf
hi! CursorLine      guibg=#92eddf
hi! CursorColum     guibg=#92eddf

hi! WinSeparator    guibg=#671448

hi! Pmenu           guibg=#2c2d36 guifg=#dce9e8



