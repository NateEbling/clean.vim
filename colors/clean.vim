" clean.vim
" Maintainer: Nate Ebling
"
" To install for 
" 1. Vim: copy to ~/.vim/colors dir
" 2. Neovim: use your favorite package manager, e.g. with Lazy: { "NateEbling/clean.vim" }

" Setup
hi clear
if exists("syntax_on")
  syntax reset
endif
set background=light
let g:colors_name="simple"

" Colors
let s:col              = {}
let s:col.black        = ['#000000', 0]
let s:col.white        = ['#FFFFFF', 0]
let s:col.beige        = ['#ffffea', 0]
let s:col.blue         = ['#0000FF', 0]
let s:col.lightblue    = ['#6681d1', 0]
let s:col.green        = ['#008000', 0]
let s:col.lightgreen   = ['#00c600', 0]
let s:col.magenta      = ['#BF00BF', 0]
let s:col.orange       = ['#800080', 0]
let s:col.red          = ['#FF0000', 0]
let s:col.brick        = ['#af3f3f', 0]
let s:col.lgrey        = ['#EDEDED', 0]
let s:col.dgrey        = ['#cecacd', 0]
let s:col.none         = ['NONE', 'NONE']
let s:underline        = 'underline'

" Highlighting Function from https://github.com/sjl/badwolf {{{
function! s:HL(group, fg, ...)
    " Arguments: group, guifg, guibg, gui, guisp

    let histring = 'hi ' . a:group . ' '

    if strlen(a:fg)
        if a:fg == 'fg'
            let histring .= 'guifg=fg ctermfg=fg '
        else
            let c = get(s:col, a:fg)
            let histring .= 'guifg=' . c[0] . ' ctermfg=' . c[1] . ' '
        endif
    endif

    if a:0 >= 1 && strlen(a:1)
        if a:1 == 'bg'
            let histring .= 'guibg=bg ctermbg=bg '
        else
            let c = get(s:col, a:1)
            let histring .= 'guibg=' . c[0] . ' ctermbg=' . c[1] . ' '
        endif
    endif

    if a:0 >= 2 && strlen(a:2)
        let histring .= 'gui=' . a:2 . ' cterm=' . a:2 . ' '
    endif

    if a:0 >= 3 && strlen(a:3)
        let c = get(s:col, a:3)
        let histring .= 'guisp=' . c[0] . ' '
    endif

    " echom histring

    execute histring
endfunction


" Highlights
call s:HL('Normal', 'black', 'beige')
call s:HL('NonText', 'black', 'beige')
call s:HL('Type', 'black', 'none')
call s:HL('Special', 'black', 'none')
call s:HL('Directory', 'black', 'none')
call s:HL('String', 'magenta', 'none')
call s:HL('Number', 'magenta', 'none')
call s:HL('Visual', 'none', 'dgrey')
call s:HL('ErrorMsg', 'red', 'none')
call s:HL('Comment', 'green', 'none')
call s:HL('Keyword', 'blue', 'none')
call s:HL('StatusLine', 'beige', 'black')
call s:HL('StatusLineNC', 'black', 'lgrey')
call s:HL('LineNr', 'black', 'none')
call s:HL('MatchParen', 'black', 'none')
call s:HL('CursorLine', 'none', 'none')
call s:HL('Cursor', 'beige', 'black')
call s:HL('Search', 'black', 'orange')
call s:HL('DiffChange', 'black', 'orange')
call s:HL('DiffText', 'black', 'none')
call s:HL('SpellBad', 'red', 'none')
call s:HL('QuickFixLine', 'orange', 'none')

" Treesitter
if has('nvim')
    call s:HL('@punctuation', 'black', 'none')
    call s:HL('@variable', 'black', 'none')
    call s:HL('@operator', 'black', 'none')
endif

hi! link Statement Normal
hi! link Conditional Statement
hi! link Repeat Statement
hi! link Label Statement
hi! link Exception Statement
hi! link Operator Normal
hi! link Function Statement
hi! link Identifier Normal

hi! link PreProc Normal
hi! link Include PreProc
hi! link Macro PreProc
hi! link PreCondit PreProc

hi! link Constant Normal
hi! link Character Normal
hi! link Boolean Normal
hi! link Number Normal
hi! link Float Normal

hi! link Type Statement
hi! link StorageClass Statement
hi! link Structure Statement
hi! link Typedef Statement
