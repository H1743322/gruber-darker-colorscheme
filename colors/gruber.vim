" Gruber Darker inspired colorscheme
" emacs theme https://github.com/rexim/gruber-darker-theme

hi clear
if exists("syntax_on")
  syntax reset
endif

let g:colors_name = "gruber"

set background=dark
set guicursor=n-v-c:block-Cursor/lCursor,i-ci-ve:ver25-Cursor/lCursor,r-cr:hor20-Cursor/lCursor

" {{{ Colors
let s:gruberFG          = ['#e4e4ef', 253]
let s:gruberFG1         = ['#f4f4ff', 254]
let s:gruberFG2         = ['#f5f5f5', 250]
let s:gruberWhite       = ['#ffffff', 15]
let s:gruberBlack       = ['#000000', 0]
let s:gruberBGm1        = ['#101010', 234]
let s:gruberBG          = ['#181818', 233]
let s:gruberBG1         = ['#282828', 235]
let s:gruberBG2         = ['#453d41', 238]
let s:gruberBG3         = ['#484848', 239]
let s:gruberBG4         = ['#52494e', 239]
let s:gruberRedm1       = ['#c73c3f', 203]
let s:gruberRed         = ['#f43841', 160]
let s:gruberRedp1       = ['#ff4f58', 167]
let s:gruberGreen       = ['#73c936', 70]
let s:gruberYellow      = ['#ffdd33', 220]
let s:gruberBrown       = ['#cc8c3c', 172]
let s:gruberQuartz      = ['#95a99f', 108]
let s:gruberNiagara2    = ['#303540', 236]
let s:gruberNiagara1    = ['#565f73', 103]
let s:gruberNiagara     = ['#96a6c8', 147]
let s:gruberWisteria    = ['#9e95c7', 98]
let s:none              = ['NONE', 'NONE']

let s:gruberBlue        = ['#89b4fa', 111]

" Diff
let s:lightYellow       = ['#f9f18c', 180]
let s:lightRed          = ['#f77b7e', 160]
let s:lightGreen        = ['#a6e267', 70]

let s:bold              = 'bold,'
let s:underline         = 'underline,'
let s:undercurl         = 'undercurl,'
let s:italic            = 'italic,'
" }}}
"

" Highlight: {{{

function! s:HI(group, fg, ...)

  let fg = a:fg

  let bg = a:0 >= 1 ? a:1 : s:none

  let style = a:0 >= 2 && strlen(a:2) ? a:2 : 'NONE,'

  let hi = [ 'hi', a:group,
        \ 'guifg=' . fg[0],         'ctermfg='  . fg[1],
        \ 'guibg=' . bg[0],         'ctermbg='  . bg[1],
        \ 'gui='   . style[:-2],    'cterm='    . style[:-2]
        \ ]

  if a:0 >= 3
    call add(hi, 'guisp=' . a:3[0])
  endif

  execute join(hi, ' ')
endfunction
" }}}

call s:HI('gruberFG',	    s:gruberFG)
call s:HI('gruberFG1',	    s:gruberFG1)
call s:HI('gruberFG2',	    s:gruberFG2)
call s:HI('gruberWhite',	s:gruberWhite)
call s:HI('gruberBlack',	s:gruberBlack)
call s:HI('gruberBGm1',	    s:gruberBGm1)
call s:HI('gruberBG',	    s:gruberBG)
call s:HI('gruberBG1',	    s:gruberBG1)
call s:HI('gruberBG2',	    s:gruberBG2)
call s:HI('gruberBG3',	    s:gruberBG3)
call s:HI('gruberBG4',	    s:gruberBG4)
call s:HI('gruberRedm1',	s:gruberRedm1)
call s:HI('gruberRed',	    s:gruberRed)
call s:HI('gruberRedp1',	s:gruberRedp1)
call s:HI('gruberGreen',	s:gruberGreen)
call s:HI('gruberYellow',	s:gruberYellow)
call s:HI('gruberBrown',	s:gruberBrown)
call s:HI('gruberQuartz',	s:gruberQuartz)
call s:HI('gruberNiagara2',	s:gruberNiagara2)
call s:HI('gruberNiagara1',	s:gruberNiagara1)
call s:HI('gruberNiagara',	s:gruberNiagara)
call s:HI('gruberWisteria',	s:gruberWisteria)

call s:HI('gruberBlue',	    s:gruberBlue)
call s:HI('lightYellow',	s:lightYellow)
call s:HI('lightRed',	    s:lightRed)
call s:HI('lightGreen',	    s:lightGreen)

" {{{ General:
call s:HI('Visual',         s:none,             s:gruberBG3)
call s:HI('VisualNOS',      s:gruberRed)
call s:HI('Normal',         s:gruberFG,         s:none)

call s:HI('Cursor',         s:none,             s:gruberYellow)
"call s:HI('lCursor',        s:none,             s:gruberYellow)

call s:HI('MatchParen',     s:gruberBG,         s:gruberNiagara)

call s:HI('LineNr',         s:gruberBG4)
call s:HI('WinSeparator',   s:gruberNiagara,    s:none)

call s:HI('CursorLine',     s:none,             s:gruberBG1)
call s:HI('CursorLineNr',   s:gruberYellow)
hi! link CursorCoumn CursorLine

call s:HI('StatusLine',     s:gruberFG,         s:gruberBG)
call s:HI('StatusLineNC',   s:gruberQuartz,     s:gruberBG)

call s:HI('Search',         s:gruberBlack,      s:gruberNiagara)
call s:HI('IncSearch',      s:gruberBlack,      s:gruberFG1)

call s:HI('Bold',           s:none,             s:none,             s:bold)
call s:HI('Italic',         s:none,             s:none,             s:italic)
call s:HI('Debug',          s:gruberRedm1)
call s:HI('Directory',      s:gruberBlue)
call s:HI('ErrorMsg',       s:gruberRedm1,      s:none)
"call s:HI('Exception',      s:gruberBrown)
"call s:HI('Folded',        s:gruberBrown,      s:gruberFG2)        "s:italic)
"
call s:HI('Macro',          s:gruberFG)
call s:HI('ModeMsg',        s:gruberFG)
call s:HI('MoreMsg',        s:gruberFG)
call s:HI('Question',       s:gruberNiagara)
call s:HI('SpecialKey',     s:gruberFG)
call s:HI('SpecialChar',    s:gruberGreen)
call s:HI('TooLong',        s:gruberFG)
call s:HI('Underlined',     s:gruberWisteria,   s:none,             s:underline)
"//
call s:HI('WarningMsg',     s:lightYellow)
call s:HI('WildMenu',       s:gruberBlack,      s:gruberYellow)
call s:HI('CmdLine',        s:gruberFG,         s:gruberBG)
call s:HI('Title',          s:gruberBlue)
call s:HI('Conceal',        s:gruberFG,         s:gruberBG)
call s:HI('SignColumn',     s:none,             s:none)
call s:HI('ColorColumn',    s:none,             s:none)
call s:HI('FoldColumn',     s:none,             s:none)
hi! link PmenuSel Visual
hi! link Pmenu Normal
call s:HI('PmenuSbar',      s:none,             s:gruberBG1)
call s:HI('PmenuThumb',     s:none,             s:gruberBG3)
call s:HI('helpExample',    s:gruberYellow)
call s:HI('helpCommand',    s:gruberYellow)
call s:HI('Special',        s:gruberFG)
"
call s:HI('TabLineSel',     s:gruberFG,         s:gruberBG1,        s:bold)
call s:HI('TabLine',        s:gruberFG,         s:none)
call s:HI('TabLineFill',    s:none,             s:none)

call s:HI('EndOfBuffer',    s:gruberBG,         s:none)
hi! link NonText EndOfBuffer

" Terminal:
let g:terminal_color_foreground = s:gruberWhite[0]
let g:terminal_color_background = s:gruberBG1[0]
let g:terminal_color_0          = s:gruberBG1[0]
let g:terminal_color_1          = s:gruberRedm1[0]
let g:terminal_color_2          = s:gruberGreen[0]
let g:terminal_color_3          = s:gruberYellow[0]
let g:terminal_color_4          = s:gruberNiagara[0]
let g:terminal_color_5          = s:gruberWisteria[0]
let g:terminal_color_6          = s:gruberNiagara[0]
let g:terminal_color_7          = s:gruberFG[0]
let g:terminal_color_8          = s:gruberBG1[0]
let g:terminal_color_9          = s:gruberRedm1[0]
let g:terminal_color_10         = s:gruberGreen[0]
let g:terminal_color_11         = s:gruberYellow[0]
let g:terminal_color_12         = s:gruberNiagara[0]
let g:terminal_color_13         = s:gruberWisteria[0]
let g:terminal_color_14         = s:gruberNiagara[0]
let g:terminal_color_15         = s:gruberFG[0]

" {{{ Syntax:
" Comments
hi! link Comment            gruberBrown
hi! link CommentDelimiter   gruberBrown
hi! link SpecialComment     gruberBrown
hi! link Delimiter          gruberFG
hi! link Tag                gruberYellow

" Constants / Literals
hi! link Constant           gruberQuartz
hi! link String             gruberGreen
hi! link Character          gruberGreen
hi! link Number             gruberFG
hi! link Boolean            gruberYellow
hi! link Float              gruberFG

" Identifiers
hi! link Identifier         gruberFG
hi! link Function           gruberNiagara
hi! link Statement          gruberYellow
hi! link Conditional        gruberYellow
hi! link Repeat             gruberYellow
hi! link Label              gruberYellow
hi! link Operator           gruberFG
hi! link Keyword            gruberYellow
hi! link Exception          gruberYellow
hi! link PreProc            gruberQuartz
hi! link Include            gruberQuartz
hi! link Define             gruberQuartz
hi! link Macro              gruberQuartz
hi! link PreCondit          gruberQuartz

" Types
hi! link Type gruberQuartz
hi! link StorageClass       gruberYellow
hi! link Structure          gruberNiagara
hi! link Typedef            gruberQuartz


" TreeSitter: {{{
"
" Comments
hi! link @comment           Comment
hi! link @comment.delimiter CommentDelimiter
hi! link @comment.todo      SpecialComment

" Constants / Literals
hi! link @constant          Constant
hi! link @constant.builtin  Constant
hi! link @number            Number
hi! link @float             Float
hi! link @boolean           Boolean
hi! link @string            String
hi! link @character         Character
hi! link @macro             Macro

" Identifiers / Functions
hi! link @variable          Identifier
hi! link @variable.builtin  Function
hi! link @function          Function
hi! link @function.builtin  Keyword
hi! link @constructor       Function
hi! link @method            Function
hi! link @field             Identifier
hi! link @property          Identifier
hi! link @parameter         Identifier
hi! link @label             Label

" Keywords / Statements
hi! link @keyword           Keyword
hi! link @keyword.function  Keyword
hi! link @keyword.operator  Operator
hi! link @keyword.return    Keyword
hi! link @conditional       Conditional
hi! link @repeat            Repeat
hi! link @statement         Statement
hi! link @exception         Exception

" Types
hi! link @type              Type
hi! link @type.builtin      Type
hi! link @structure         Structure
hi! link @class             Type
hi! link @interface         Type
hi! link @module            Type
hi! link @namespace         Type
hi! link @storageclass      StorageClass
hi! link @typedef           Typedef
hi! link @preproc           PreProc
hi! link @include           Include
hi! link @define            Define
hi! link @precondit         PreCondit

hi! link @punctuation.bracket   Delimiter
hi! link @punctuation.delimiter Delimiter
hi! link @punctuation.special   Delimiter

hi! link @text.bold         Bold
hi! link @text.italic       Italic
hi! link @text.underline    Underlined

hi! link @error             ErrorMsg
hi! link @todo              WarningMsg
" }}}


" Nvim Tree: {{{
hi! link NvimTreeFolderIcon       Directory
hi! link NvimTreeRootFolder       Directory
hi! link NvimTreeFolderName       Directory
hi! link NvimTreeOpenedFolderName Directory
hi! link NvimTreeEmptyFolderName  Directory

hi! link NvimTreeFileName         Normal
hi! link NvimTreeFileIcon         Normal
hi! link NvimTreeOpenedFile       Identifier
hi! link NvimTreeSpecialFile      gruberQuartz

hi! link NvimTreeNormal           Normal
hi! link NvimTreeCursorLine       CursorLine
hi! link NvimTreeCursor           Cursor
hi! link NvimTreeVertSplit        WinSeparator
" }}}

" Telescope:  {{{
hi! link TelescopeNormal          Normal
hi! link TelescopeSelection       CursorLine
hi! link TelescopeSelectionCaret  Keyword
hi! link TelescopeMatching        Statement
hi! link TelescopePromptPrefix    Identifier
hi! link TelescopeBorder          WinSeparator
" }}}

" Diff: {{{{
hi! link DiffAdd        lightGreen
hi! link DiffDelete     lightRed
call s:HI('DiffChange',     s:none,             s:gruberBG2)
call s:HI('DiffText',       s:gruberBlack,      s:gruberQuartz)

hi! link diffAdded      DiffAdd
hi! link diffRemoved    DiffDelete
hi! link diffLine       lightYellow

hi! link GitSignsAdd      DiffAdd
hi! link GitSignsDelete   DiffDelete
call s:HI('GitSignsChange', s:lightYellow)

"}}}}

" LSP: {{{
call s:HI('DiagnosticUnnecessary', s:none,      s:none)
" }}}

"UndoTree: {{{
hi! link UndotreeSavedBig   MatchParen
hi! link UndotreeCurrent    Statement
"}}}

" Fugitive: {{{
hi! link fugitiveUntrackedHeading   PreProc
hi! link fugitiveUnstagedHeading    gruberWisteria
hi! link fugitiveStagedHeading      gruberWisteria
" }}}
