" Colorscheme by Nate Ebling

set background=light
hi clear
syntax reset

" Colors for the User Interface.

hi Cursor          guibg=black      guifg=#F6F7F6
hi CursorLine      guibg=NONE       guifg=NONE
hi Normal          guibg=#F6F7F6    guifg=black
hi NonText         guibg=#F6F7F6    guifg=#7f7f7f
hi Visual          guibg=black      guifg=#F6F7F6
hi Linenr          guibg=bg         guifg=#7f7f7f
hi Directory       guibg=#F6F7F6    guifg=black
hi IncSearch       guibg=#F6F7F6    guifg=black
hi link            Search           IncSearch

hi SpecialKey      guibg=#F6F7F6    guifg=black
hi Titled          guibg=#F6F7F6    guifg=black

hi ErrorMsg        guibg=#F6F7F6    guifg=#ff0000
hi ModeMsg         guibg=#F6F7F6    guifg=black
hi link            MoreMsg          ModeMsg
hi Question        guibg=#F6F7F6    guifg=black
hi link            WarningMsg       ErrorMsg

hi StatusLine      guibg=black      guifg=#F6F7F6    cterm=none
hi StatusLineNC    guibg=#757575    guifg=#F6F7F6    cterm=none
hi VertSplit       guibg=#F6F7F6    guifg=black      cterm=none

hi DiffAdd         guibg=#446688    guifg=fg
hi DiffChange      guibg=#558855    guifg=fg
hi DiffDelete      guibg=#884444    guifg=fg
hi DiffText        guibg=#884444    guifg=fg

" Colors for Syntax Highlighting.

hi Comment         guibg=#F6F7F6    guifg=#696969

hi Constant        guibg=#F6F7F6    guifg=#b21e00
hi String          guibg=#F6F7F6    guifg=#008200
hi Character       guibg=#F6F7F6    guifg=black
hi Number          guibg=#F6F7F6    guifg=#b21e00
hi Boolean         guibg=#F6F7F6    guifg=#b21e00
hi Float           guibg=#F6F7F6    guifg=#b21e00

hi Identifier      guibg=#F6F7F6    guifg=black
hi Function        guibg=#F6F7F6    guifg=#0030f2
hi Statement       guibg=#F6F7F6    guifg=black

hi Conditional     guibg=#F6F7F6    guifg=#9d00ec
hi Repeat          guibg=#F6F7F6    guifg=black
hi Label           guibg=#F6F7F6    guifg=black
hi Operator        guibg=#F6F7F6    guifg=black
hi Keyword         guibg=#F6F7F6    guifg=#9d00ec
hi Exception       guibg=#F6F7F6    guifg=#9d00ec

hi PreProc         guibg=#F6F7F6    guifg=#9d00ec
hi Include         guibg=#F6F7F6    guifg=#9d00ec
hi link            Define           Include
hi link            Macro            Include
hi link            PreCondit        Include

hi Type            guibg=#F6F7F6    guifg=#b21e00
hi StorageClass    guibg=#F6F7F6    guifg=black
hi Structure       guibg=#F6F7F6    guifg=#9d00ec
hi Typedef         guibg=#F6F7F6    guifg=#9d00ec

hi Special         guibg=#F6F7F6    guifg=black
hi SpecialChar     guibg=#F6F7F6    guifg=black
hi Tag             guibg=#F6F7F6    guifg=black
hi Delimiter       guibg=#F6F7F6    guifg=black
hi SpecialComment  guibg=#F6F7F6    guifg=black
hi Debug           guibg=#F6F7F6    guifg=black

hi Title           guibg=#F6F7F6    guifg=black
hi Ignore          guibg=#F6F7F6    guifg=black
hi Error           guibg=#F6F7F6    guifg=#ff0000
hi Todo            guibg=#F6F7F6    guifg=#ff0000
hi MatchParen      guibg=#F6F7F6    guifg=black

" Language-specific highlights
" C
hi link            cStructure       Structure
hi link            cType            Type
hi link            cNumbers         Number
hi link            cFloat           Float
hi link            cStatement       Keyword
hi link            cStorageClass    Keyword

" Rust
hi link            rustStorage      Keyword
hi link            rustSelf         Keyword
hi link            rustTrait        Number
hi link            rustMacro        Number 
hi link            rustType         Number 
hi link            rustDecNumber    Number 
hi link            rustAttribute    Number 
hi link            rustDerive       Number 
hi link            rustIdentifier   Function
hi link            rustFuncName     Function 

" Python
hi link            pythonFunction   Function
hi link            pythonNumber     Number 
hi link            pythonInclude    Keyword
hi link            pythonConditional    Keyword
hi link            pythonException  Keyword
hi link            pythonStatement  Keyword
" And finally.

let g:colors_name = "clean"
let colors_name   = "clean"
