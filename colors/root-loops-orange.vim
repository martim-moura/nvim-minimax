" Store the following config under ~/.config/nvim/colors/root-loops.vim
" then load it into neovim via ':colorscheme root-loops' or by declaring
" it as your colorscheme in your neovim config.

" root-loops.vim -- Root Loops Vim Color Scheme.
" Webpage:          https://rootloops.sh?sugar=8&colors=7&sogginess=4&flavor=0&fruit=2&milk=1
" Description:      A neovim color scheme for cereal lovers

hi clear

if exists("syntax_on")
    syntax reset
endif

let colors_name = "root loops"

if ($TERM =~ '256' || &t_Co >= 256) || has("gui_running")
    hi Normal ctermbg=NONE ctermfg=NONE guibg=NONE guifg=NONE
    hi NonText ctermfg=8 guifg=#c29774
    hi Comment ctermfg=7 cterm=italic guifg=#c29774 gui=italic
    hi Constant ctermfg=3 guifg=#e59b5d
    hi Error ctermfg=1 guifg=#ed8cab
    hi Identifier ctermfg=9 guifg=#f3adc2
    hi Function ctermfg=4 guifg=#6db7e9
    hi Special ctermfg=13 guifg=#ccb8f3
    hi Delimiter ctermfg=15 guifg=#e9d1be
    hi Statement ctermfg=5 guifg=#b99ded
    hi String ctermfg=2 guifg=#a4ba54
    hi Operator ctermfg=6 guifg=#56c4b1
    hi Boolean ctermfg=3 guifg=#e59b5d
    hi Label ctermfg=14 guifg=#6adbc7
    hi Keyword ctermfg=5 guifg=#b99ded
    hi Exception ctermfg=5 guifg=#b99ded
    hi Conditional ctermfg=5 guifg=#b99ded
    hi PreProc ctermfg=13 guifg=#ccb8f3
    hi Include ctermfg=5 guifg=#b99ded
    hi Macro ctermfg=5 guifg=#b99ded
    hi StorageClass ctermfg=11 guifg=#f1b686
    hi Structure ctermfg=11 guifg=#f1b686
    hi Todo ctermbg=12 ctermfg=0 cterm=bold guibg=#95cbf3 guifg=#2d1e12 gui=bold
    hi Type ctermfg=11 guifg=#f1b686
    hi Underlined cterm=underline gui=underline
    hi Bold cterm=bold gui=bold
    hi Italic cterm=italic gui=italic
    hi Ignore ctermbg=NONE ctermfg=NONE cterm=NONE guibg=NONE guifg=NONE gui=NONE
    hi StatusLine ctermbg=0 ctermfg=15 cterm=NONE guibg=#473120 guifg=#e9d1be gui=NONE
    hi StatusLineNC ctermbg=0 ctermfg=15 cterm=NONE guibg=#2d1e12 guifg=#e3c4ac gui=NONE
    hi VertSplit ctermfg=8 guifg=#74543a
    hi TabLine ctermbg=0 ctermfg=7 guibg=#473120 guifg=#c29774
    hi TabLineFill ctermbg=NONE ctermfg=0 guibg=NONE guifg=#473120
    hi TabLineSel ctermbg=11 ctermfg=0 guibg=#f1b686 guifg=#473120
    hi Title ctermfg=4 cterm=bold guifg=#6db7e9 gui=bold
    hi CursorLine ctermbg=0 ctermfg=NONE guibg=#473120 guifg=NONE
    hi Cursor ctermbg=15 ctermfg=0 guibg=#e9d1be guifg=#2d1e12
    hi CursorColumn ctermbg=0 guibg=#473120
    hi LineNr ctermfg=8 guifg=#74543a
    hi CursorLineNr ctermfg=6 guifg=#56c4b1
    hi helpLeadBlank ctermbg=NONE ctermfg=NONE guibg=NONE guifg=NONE
    hi helpNormal ctermbg=NONE ctermfg=NONE guibg=NONE guifg=NONE
    hi Visual ctermbg=8 ctermfg=15 cterm=bold guibg=#74543a guifg=#e9d1be gui=bold
    hi VisualNOS ctermbg=8 ctermfg=15 cterm=bold guibg=#74543a guifg=#e9d1be gui=bold
    hi Pmenu ctermbg=0 ctermfg=15 guibg=#473120 guifg=#e9d1be
    hi PmenuSbar ctermbg=8 ctermfg=7 guibg=#74543a guifg=#c29774
    hi PmenuSel ctermbg=8 ctermfg=15 cterm=bold guibg=#74543a guifg=#e9d1be gui=bold
    hi PmenuThumb ctermbg=7 ctermfg=NONE guibg=#c29774 guifg=NONE
    hi FoldColumn ctermfg=7 guifg=#c29774
    hi Folded ctermfg=12 guifg=#95cbf3
    hi WildMenu ctermbg=0 ctermfg=15 cterm=NONE guibg=#473120 guifg=#e9d1be gui=NONE
    hi SpecialKey ctermfg=0 guifg=#473120
    hi IncSearch ctermbg=1 ctermfg=0 guibg=#ed8cab guifg=#2d1e12
    hi CurSearch ctermbg=3 ctermfg=0 guibg=#e59b5d guifg=#2d1e12
    hi Search ctermbg=11 ctermfg=0 guibg=#f1b686 guifg=#2d1e12
    hi Directory ctermfg=4 guifg=#6db7e9
    hi MatchParen ctermbg=0 ctermfg=3 cterm=bold guibg=#473120 guifg=#e59b5d gui=bold
    hi SpellBad cterm=undercurl gui=undercurl guisp=#f3adc2
    hi SpellCap cterm=undercurl gui=undercurl guisp=#f1b686
    hi SpellLocal cterm=undercurl gui=undercurl guisp=#95cbf3
    hi SpellRare cterm=undercurl gui=undercurl guisp=#b9d167
    hi ColorColumn ctermbg=8 guibg=#74543a
    hi SignColumn ctermfg=7 guifg=#c29774
    hi ModeMsg ctermbg=15 ctermfg=0 cterm=bold guibg=#e3c4ac guifg=#473120 gui=bold
    hi MoreMsg ctermfg=4 guifg=#6db7e9
    hi Question ctermfg=4 guifg=#6db7e9
    hi QuickFixLine ctermbg=0 ctermfg=14 guibg=#473120 guifg=#6adbc7
    hi Conceal ctermfg=8 guifg=#74543a
    hi ToolbarLine ctermbg=0 ctermfg=15 guibg=#473120 guifg=#e3c4ac
    hi ToolbarButton ctermbg=8 ctermfg=15 guibg=#74543a guifg=#e3c4ac
    hi debugPC ctermfg=7 guifg=#c29774
    hi debugBreakpoint ctermfg=8 guifg=#74543a
    hi ErrorMsg ctermfg=1 cterm=bold,italic guifg=#ed8cab gui=bold,italic
    hi WarningMsg ctermfg=11 guifg=#f1b686
    hi DiffAdd ctermbg=10 ctermfg=0 guibg=#b9d167 guifg=#2d1e12
    hi DiffChange ctermbg=12 ctermfg=0 guibg=#95cbf3 guifg=#2d1e12
    hi DiffDelete ctermbg=9 ctermfg=0 guibg=#f3adc2 guifg=#2d1e12
    hi DiffText ctermbg=14 ctermfg=0 guibg=#6adbc7 guifg=#2d1e12
    hi diffAdded ctermfg=10 guifg=#b9d167
    hi diffRemoved ctermfg=9 guifg=#f3adc2
    hi diffChanged ctermfg=12 guifg=#95cbf3
    hi diffOldFile ctermfg=11 guifg=#f1b686
    hi diffNewFile ctermfg=13 guifg=#ccb8f3
    hi diffFile ctermfg=12 guifg=#95cbf3
    hi diffLine ctermfg=7 guifg=#c29774
    hi diffIndexLine ctermfg=14 guifg=#6adbc7
    hi healthError ctermfg=1 guifg=#ed8cab
    hi healthSuccess ctermfg=2 guifg=#a4ba54
    hi healthWarning ctermfg=3 guifg=#e59b5d
    hi NormalFloat ctermbg=0 ctermfg=15 guibg=#2d1e12 guifg=#e9d1be
    hi FloatBorder ctermbg=0 ctermfg=7 guibg=#2d1e12 guifg=#c29774
    hi FloatShadow ctermbg=0 ctermfg=15 guibg=#473120 guifg=#e9d1be
    hi @variable ctermfg=15 guifg=#e9d1be
    hi @variable.builtin ctermfg=1 guifg=#ed8cab
    hi @variable.parameter ctermfg=1 guifg=#ed8cab
    hi @variable.member ctermfg=1 guifg=#ed8cab
    hi @constant.builtin ctermfg=5 guifg=#b99ded
    hi @string.regexp ctermfg=1 guifg=#ed8cab
    hi @string.escape ctermfg=6 guifg=#56c4b1
    hi @string.special.url ctermfg=4 cterm=underline guifg=#6db7e9 gui=underline
    hi @string.special.symbol ctermfg=13 guifg=#ccb8f3
    hi @type.builtin ctermfg=3 guifg=#e59b5d
    hi @property ctermfg=1 guifg=#ed8cab
    hi @function.builtin ctermfg=5 guifg=#b99ded
    hi @constructor ctermfg=11 guifg=#f1b686
    hi @keyword.function ctermfg=5 guifg=#b99ded
    hi @keyword.return ctermfg=5 guifg=#b99ded
    hi @keyword.export ctermfg=12 guifg=#95cbf3
    hi @punctuation.bracket ctermfg=15 guifg=#e9d1be
    hi @comment.error ctermbg=9 ctermfg=0 guibg=#f3adc2 guifg=#2d1e12
    hi @comment.warning ctermbg=11 ctermfg=0 guibg=#f1b686 guifg=#2d1e12
    hi @comment.todo ctermbg=12 ctermfg=0 guibg=#95cbf3 guifg=#2d1e12
    hi @comment.note ctermbg=14 ctermfg=0 guibg=#6adbc7 guifg=#2d1e12
    hi @markup ctermfg=15 guifg=#e9d1be
    hi @markup.strong ctermfg=15 cterm=bold guifg=#e9d1be gui=bold
    hi @markup.italic ctermfg=15 cterm=italic guifg=#e9d1be gui=italic
    hi @markup.strikethrough ctermfg=15 cterm=strikethrough guifg=#e9d1be gui=strikethrough
    hi @markup.heading ctermfg=4 cterm=bold guifg=#6db7e9 gui=bold
    hi @markup.quote ctermfg=6 guifg=#56c4b1
    hi @markup.math ctermfg=4 guifg=#6db7e9
    hi @markup.link.url ctermfg=5 cterm=underline guifg=#b99ded gui=underline
    hi @markup.raw ctermfg=14 guifg=#6adbc7
    hi @markup.list.checked ctermfg=2 guifg=#a4ba54
    hi @markup.list.unchecked ctermfg=7 guifg=#c29774
    hi @tag ctermfg=5 guifg=#b99ded
    hi @tag.builtin ctermfg=6 guifg=#56c4b1
    hi @tag.attribute ctermfg=4 guifg=#6db7e9
    hi @tag.delimiter ctermfg=15 guifg=#e9d1be

elseif &t_Co == 8 || $TERM !~# '^linux' || &t_Co == 16
    set t_Co=16
    hi Normal ctermbg=NONE ctermfg=NONE
    hi NonText ctermfg=0
    hi Comment ctermfg=7 cterm=italic
    hi Constant ctermfg=3
    hi Error ctermfg=1
    hi Identifier ctermfg=9
    hi Function ctermfg=4
    hi Special ctermfg=13
    hi Delimiter ctermfg=15
    hi Statement ctermfg=5
    hi String ctermfg=2
    hi Operator ctermfg=6
    hi Boolean ctermfg=3
    hi Label ctermfg=14
    hi Keyword ctermfg=5
    hi Exception ctermfg=5
    hi Conditional ctermfg=5
    hi PreProc ctermfg=13
    hi Include ctermfg=5
    hi Macro ctermfg=5
    hi StorageClass ctermfg=11
    hi Structure ctermfg=11
    hi Todo ctermbg=12 ctermfg=0 cterm=bold
    hi Type ctermfg=11
    hi Underlined cterm=underline
    hi Bold cterm=bold
    hi Italic cterm=italic
    hi Ignore ctermbg=NONE ctermfg=NONE cterm=NONE
    hi StatusLine ctermbg=0 ctermfg=15 cterm=NONE
    hi StatusLineNC ctermbg=0 ctermfg=15 cterm=NONE
    hi VertSplit ctermfg=8
    hi TabLine ctermbg=0 ctermfg=7
    hi TabLineFill ctermbg=NONE ctermfg=0
    hi TabLineSel ctermbg=11 ctermfg=0
    hi Title ctermfg=4 cterm=bold
    hi CursorLine ctermbg=0 ctermfg=NONE
    hi Cursor ctermbg=15 ctermfg=0
    hi CursorColumn ctermbg=0
    hi LineNr ctermfg=8
    hi CursorLineNr ctermfg=6
    hi helpLeadBlank ctermbg=NONE ctermfg=NONE
    hi helpNormal ctermbg=NONE ctermfg=NONE
    hi Visual ctermbg=8 ctermfg=15 cterm=bold
    hi VisualNOS ctermbg=8 ctermfg=15 cterm=bold
    hi Pmenu ctermbg=0 ctermfg=15
    hi PmenuSbar ctermbg=8 ctermfg=7
    hi PmenuSel ctermbg=8 ctermfg=15 cterm=bold
    hi PmenuThumb ctermbg=7 ctermfg=NONE
    hi FoldColumn ctermfg=7
    hi Folded ctermfg=12
    hi WildMenu ctermbg=0 ctermfg=15 cterm=NONE
    hi SpecialKey ctermfg=0
    hi IncSearch ctermbg=1 ctermfg=0
    hi CurSearch ctermbg=3 ctermfg=0
    hi Search ctermbg=11 ctermfg=0
    hi Directory ctermfg=4
    hi MatchParen ctermbg=0 ctermfg=3 cterm=bold
    hi SpellBad cterm=undercurl
    hi SpellCap cterm=undercurl
    hi SpellLocal cterm=undercurl
    hi SpellRare cterm=undercurl
    hi ColorColumn ctermbg=8
    hi SignColumn ctermfg=7
    hi ModeMsg ctermbg=15 ctermfg=0 cterm=bold
    hi MoreMsg ctermfg=4
    hi Question ctermfg=4
    hi QuickFixLine ctermbg=0 ctermfg=14
    hi Conceal ctermfg=8
    hi ToolbarLine ctermbg=0 ctermfg=15
    hi ToolbarButton ctermbg=8 ctermfg=15
    hi debugPC ctermfg=7
    hi debugBreakpoint ctermfg=8
    hi ErrorMsg ctermfg=1 cterm=bold,italic
    hi WarningMsg ctermfg=11
    hi DiffAdd ctermbg=10 ctermfg=0
    hi DiffChange ctermbg=12 ctermfg=0
    hi DiffDelete ctermbg=9 ctermfg=0
    hi DiffText ctermbg=14 ctermfg=0
    hi diffAdded ctermfg=10
    hi diffRemoved ctermfg=9
    hi diffChanged ctermfg=12
    hi diffOldFile ctermfg=11
    hi diffNewFile ctermfg=13
    hi diffFile ctermfg=12
    hi diffLine ctermfg=7
    hi diffIndexLine ctermfg=14
    hi healthError ctermfg=1
    hi healthSuccess ctermfg=2
    hi healthWarning ctermfg=3
    hi NormalFloat ctermbg=0 ctermfg=15
    hi FloatBorder ctermbg=0 ctermfg=7
    hi FloatShadow ctermbg=0 ctermfg=15
    hi @variable ctermfg=15
    hi @variable.builtin ctermfg=1
    hi @variable.parameter ctermfg=1
    hi @variable.member ctermfg=1
    hi @constant.builtin ctermfg=5
    hi @string.regexp ctermfg=1
    hi @string.escape ctermfg=6
    hi @string.special.url ctermfg=4 cterm=underline
    hi @string.special.symbol ctermfg=13
    hi @type.builtin ctermfg=3
    hi @property ctermfg=1
    hi @function.builtin ctermfg=5
    hi @constructor ctermfg=11
    hi @keyword.function ctermfg=5
    hi @keyword.return ctermfg=5
    hi @keyword.export ctermfg=12
    hi @punctuation.bracket ctermfg=15
    hi @comment.error ctermbg=9 ctermfg=0
    hi @comment.warning ctermbg=11 ctermfg=0
    hi @comment.todo ctermbg=12 ctermfg=0
    hi @comment.note ctermbg=14 ctermfg=0
    hi @markup ctermfg=15
    hi @markup.strong ctermfg=15 cterm=bold
    hi @markup.italic ctermfg=15 cterm=italic
    hi @markup.strikethrough ctermfg=15 cterm=strikethrough
    hi @markup.heading ctermfg=4 cterm=bold
    hi @markup.quote ctermfg=6
    hi @markup.math ctermfg=4
    hi @markup.link.url ctermfg=5 cterm=underline
    hi @markup.raw ctermfg=14
    hi @markup.list.checked ctermfg=2
    hi @markup.list.unchecked ctermfg=7
    hi @tag ctermfg=5
    hi @tag.builtin ctermfg=6
    hi @tag.attribute ctermfg=4
    hi @tag.delimiter ctermfg=15
endif

hi link EndOfBuffer NonText
hi link SpecialComment Special
hi link Define PreProc
hi link PreCondit PreProc
hi link Number Constant
hi link Float Number
hi link Typedef Type
hi link SpecialChar Special
hi link Debug Special
hi link StatusLineTerm StatusLine
hi link StatusLineTermNC StatusLineNC
hi link WinSeparator VertSplit
hi link WinBar StatusLine
hi link WinBarNC StatusLineNC
hi link lCursor Cursor
hi link CursorIM Cursor
hi link Terminal Normal
hi link @variable.parameter.builtin @variable.parameter
hi link @constant Constant
hi link @constant.macro Macro
hi link @module Structure
hi link @module.builtin Special
hi link @label Label
hi link @string String
hi link @string.special Special
hi link @character Character
hi link @character.special SpecialChar
hi link @boolean Boolean
hi link @number Number
hi link @number.float Float
hi link @type Type
hi link @type.definition Type
hi link @attribute Constant
hi link @attribute.builtin Constant
hi link @function Function
hi link @function.call Function
hi link @function.method Function
hi link @function.method.call Function
hi link @operator Operator
hi link @keyword Keyword
hi link @keyword.coroutine Keyword
hi link @keyword.operator Operator
hi link @keyword.import Include
hi link @keyword.type Keyword
hi link @keyword.modifier Keyword
hi link @keyword.repeat Repeat
hi link @keyword.debug Exception
hi link @keyword.exception Exception
hi link @keyword.conditional Conditional
hi link @keyword.conditional.ternary Operator
hi link @keyword.directive PreProc
hi link @keyword.directive.define Define
hi link @punctuation.delimiter Delimiter
hi link @punctuation.special Special
hi link @comment Comment
hi link @comment.documentation Comment
hi link @markup.underline underline
hi link @markup.link Tag
hi link @markup.link.label Label
hi link @markup.list Special
hi link @diff.plus diffAdded
hi link @diff.minus diffRemoved
hi link @diff.delta diffChanged

if (has('termguicolors') && &termguicolors) || has('gui_running')
    let g:terminal_ansi_colors = [ '#473120', '#ed8cab', '#a4ba54', '#e59b5d', '#6db7e9', '#b99ded', '#56c4b1', '#c29774', '#74543a', '#f3adc2', '#b9d167', '#f1b686', '#95cbf3', '#ccb8f3', '#6adbc7', '#e3c4ac' ]
endif
