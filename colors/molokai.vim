" Tab Line	TabLine to jediFat
" Tab LineSel	TabLineSel
" Tab LineFill	TabLineFill
"
" Github dark background
" RGB(12,14,19,1)
let s:github_black = '#0d111b'
" #161C22
" #D2A8FF
" #FF7B72
let s:github_grey = '#8B949E'
" #79C0FF


" Material colors
let s:redmaterial               = '#ff5252'
let s:lightredmaterial          = '#ff867f'
let s:darkredmaterial           = '#c50e29'
let s:pinkmaterial              = '#ff4081'
let s:lightpinkmaterial         = '#ff79b0'
let s:darkpinkmaterial          = '#c60055'
let s:purplematerial            = '#e040fb'
let s:lightpurplematerial       = '#ff79ff'
let s:darkpurplematerial        = '#aa00c7'
let s:deeppurplematerial        = '#7c4dff'
let s:lightdeeppurplematerial   = '#b47cff'
let s:indigo                    = '#536dfe'
let s:darkdeeppurplematerial    = '#3f1dcb'
let s:lightindigomaterial       = '#8f9bff'
let s:darkindigomaterial        = '#0043ca'
let s:bluematerial      = '#448aff'
let s:lightbluematerial = '#83b9ff'
let s:darkbluematerial = '#005ecb'
let s:lightbluematerial = '#40c4ff'
let s:lightlightbluematerial = '#82f7ff'
let s:darklightbluematerial = '#0094cc'
let s:cyanmaterial = '#18ffff'
let s:lightcyanmaterial = '#76ffff'
let s:darkcyanmaterial = '#00cbcc'
let s:tealmaterial = '#65ffda'
let s:lighttealmaterial = '#9effff'
let s:darktealmaterial = '#14cba8'
let s:greenmaterial = '#69f0ae'
let s:lightgreenmaterial = '#9fffe0'
let s:darkgreenmaterial = '#2bbd7e'
let s:lightgreenmaterial = '#b2ff59'
let s:lightlightgreenmaterial = '#e7ff8c'
let s:darklightgreenmaterial = '#7ecb20'
let s:limematerial = '#eeff71'
let s:lightlimematerial = '#ffff78'
let s:darklimematerial = '#b8cc00'
let s:yellowmaterial = '#ffff00'
let s:lightyellowmaterial = '#ffff5a'
let s:darkyellowmaterial = '#c7cc00'
let s:ambermaterial = '#ffd740'
let s:lightambermaterial = '#ffff74'
let s:darkambermaterial = '#c8a600'
let s:orangematerial = '#ffab40'
let s:lightorangematerial = '#ffdd71'
let s:darkoragnematerial = '#c77c02'
let s:deeporangematerial = '#ff6e40'
let s:lightdeeporangematerial = '#ffa06d'
let s:darkdeeporangematerial = '#c53d13'
let s:brownmaterial = '#3e2723'
let s:lightbrownmaterial = '#6a4f4b'
let s:darkbrownmaterial = '#1b0000'
let s:greymaterial = '#212121'
let s:lightgreymaterial = '#484848'
let s:darkgreymaterial = '#000000'
let s:bluegreymaterial = '#263238'
let s:lightbluegreymaterial = '#4f5b62'
let s:darkbluegreymaterial = '#000a12'

"
" Vim color file
"
" Blossom color scheme from
" https://github.com/rajshekhar26/dotfiles/blob/master/.config/colorschemes/blossom
" ! special
" #818aa0
let s:blossom_foreground        = '#F2f2f4'
let s:blossom_background        = '#2f3842'
let s:blossom_black             = '#22272a'
let s:blossom_black_highlight   = '#22272d'
let s:blossom_grey              = '#6A777E'
let s:blossom_red               = '#ef4b4b'
let s:blossom_green             = '#2CC46E'
let s:blossom_yellow            = '#ECC46F'
let s:blossom_blue              = '#6f97ec'
let s:blossom_magenta           = '#fa5477'
let s:blossom_cyan              = '#71c6ff'

"
" Author: Tomas Restrepo <tomas@winterdom.com>
" https://github.com/tomasr/molokai
"
" Note: Based on the Monokai theme for TextMate
" by Wimer Hazenberg and its darker variant
" by Hamish Stuart Macpherson
" ROYGTBMP
let s:shade0 = "#282629"
let s:shade1 = "#474247"
let s:shade2 = "#656066"
let s:shade3 = "#847E85"
let s:shade4 = "#A29DA3"
let s:shade5 = "#C1BCC2"
let s:shade6 = "#E0DCE0"
let s:shade7 = "#FFFCFF"

let s:black             = "#171717"
let s:brightyellow      = "#eeff00"
let s:yellow            = "#ffff00"
let s:green             = "#87ff00"
let s:blue              = "#007dff"
let s:teal              = "#5AF7B0"
let s:pink              = "#F92672"
let s:red               = "#ff2600"
let s:brightred         = "#FF4050"
let s:purple            = "#AE81FF"
let s:orange            = "#fd971f"


let s:red0 = "#FF4050"
let s:orange0 = "#F28144"
let s:yellow0 = "#FFD24A"
let s:green0 = "#A4CC35"
let s:teal0 = "#26C99E"
let s:blue0 = "#66BFFF"
let s:magenta0 = "#CC78FA"
let s:pink0 = "#F553BF"
let s:red1 = "#F03E4D"
let s:orange1 = "#F37735"
let s:yellow1 = "#EEBA21"
let s:green1 = "#97BD2D"
let s:teal1 = "#1FC598"
let s:blue1 = "#5AF7B0"
let s:magenta1 = "#BF65F0"
let s:pink1 = "#EE4EB8"
" #494b53
" #696c77
" #a0a1a7
" #c2c2c3
" #0184bc
" #4078f2
" #a626a4
" #50a14f
" #e45649
" #ca1243
" #986801
" #c18401
" #fafafa
" #9e9e9e
" #f0f0f0
" #526fff
" #0083be
" #e7e9e1
" #d3d3d3
" #d0d0d0
" #dfdfdf
"

let s:yellow_light = "#FDE74C"
let s:blue_light = "#5bc0eb"
let s:green_light = "#9bc53d"
let s:red_light = "#e55934"
let s:orange_light = "#FA7921"

hi clear

if version > 580
    " no guarantees for version 5.8 and below, but this makes it stop
    " complaining
    hi clear
    if exists("syntax_on")
        syntax reset
    endif
endif
let g:colors_name="molokai"

if exists("g:molokai_original")
    let s:molokai_original = g:molokai_original
else
    let s:molokai_original = 0
endif



hi Boolean         guifg=#0184bc
hi Character       guifg=#ffff00
hi Number          guifg=#ff0080
hi String          guifg=#ffff00 gui=italic
hi Conditional     guifg=#F92672               gui=bold
hi Constant        guifg=#AE81FF               gui=bold
hi Conceal		   guibg=NONE	 guifg=#cfcfc2 gui=NONE
hi Cursor          guifg=#000000 guibg=#ffffff
hi iCursor         guifg=#000000 guibg=#ffffff
hi CursorColumn                  guibg=#252525
hi IndentGuidesOdd guifg=#494949
hi IndentGuidesEven guifg=#3E3D32

hi Debug           guifg=#BCA3A3               gui=bold
hi Define          guifg=#FF0080               gui=bold
hi pythonTripleQuotes guifg=#404040 gui=italic
hi Delimiter       guifg=#8F8F8F
hi DiffAdd         guifg=#B2FF59 guibg=NONE
hi DiffChange      guifg=#E040FB guibg=NONE
hi DiffDelete      guifg=#FF2600 guibg=NONE
" hi DiffText        guifg=# gui=italic,bold
hi Directory       guifg=#b2b2b2
" hi Error           guifg=#FF2600 guibg=#F7C2CC
" hi ErrorMsg        guifg=#F92672 guibg=#232526 gui=bold
hi Exception       guifg=#fd971f               gui=bold
hi Float           guifg=#AE81FF
hi Folded	       guifg=#465457 guibg=#1e1e1e  gui=bold,italic
hi FoldColumn      guifg=#465457 guibg=#1e1e1e  gui=bold,italic
hi Function        guifg=#87ff00
hi Identifier      guifg=#FF4081			  gui=bold
hi Ignore          guifg=#808080 guibg=bg
hi IncSearch       guifg=#F92672 guibg=#FED7E5 gui=bold

hi Keyword         guifg=#65D8EE               gui=bold
hi Label           guifg=#ffff00               gui=none
hi NonText         guifg=#75715E
hi Macro           guifg=#87ff00               gui=bold
hi SpecialKey      guifg=#66D9EF               gui=bold
hi MatchParen      guifg=#F92672 guibg=#202020 gui=bold
hi ModeMsg         guifg=#E6DB74
hi MoreMsg         guifg=#E6DB74
hi Operator        guifg=#FF79FF

" complete menu

hi Pmenu           guifg=#efefef guibg=#303030
hi PmenuSel        guifg=#00CCFF guibg=#404040 gui=bold
hi PmenuSbar       guifg=#B2FF59 guibg=#303030
hi PmenuThumb      guifg=#66D9EF guibg=#303030

hi PreCondit       guifg=#fd971f               gui=bold
hi PreProc         guifg=#d3ff00
hi Question        guifg=#66D9EF
hi Repeat          guifg=#F92672               gui=bold
hi Search          guifg=#FFFFFF guibg=#FF2600 gui=bold
hi SignColumn      guifg=#fd971f guibg=#232526
hi SpecialChar     guifg=#F92672               gui=bold
hi SpecialComment  guifg=#465457               gui=bold,italic
hi Special         guifg=#00CCFF guibg=bg,italic      gui=bold



if has("spell")
    hi SpellBad    guisp=#FF0000 guibg=#f8f8f0 guifg=#171717 gui=undercurl,bold
    hi SpellCap    guisp=#7070F0 gui=undercurl
    hi SpellLocal  guisp=#70F0F0 gui=undercurl
    hi SpellRare   guisp=#FFFFFF gui=undercurl
endif
hi Statement       guifg=#F92672               gui=bold
hi StatusLine      guifg=#455354 guibg=fg
hi StatusLineNC    guifg=#808080 guibg=#080808
hi StorageClass    guifg=#87ff00               gui=italic
hi Structure       guifg=#70f0f0
hi Tag             guifg=#F92672               gui=italic
hi Title           guifg=#fd971f               gui=bold
hi Todo            guifg=#FF005b guibg=bg      gui=bold

hi Typedef         guifg=#007dff
hi Type            guifg=#66D9EF               gui=none
hi Underlined      gui=underline

hi VertSplit       guifg=#303030               gui=bold
hi Visual          guifg=#007dff guibg=#303030 gui=bold
hi VisualNOS       guifg=#007dff               gui=bold
hi WarningMsg      guifg=#303030 guibg=#FFFF00 gui=bold
hi WildMenu        guifg=#66D9EF guibg=#000000

hi TabLineFill     guifg=#007dff guibg=#f0f0f0 gui=bold
hi TabLine         guibg=#f92672 guifg=#f0f0f0 gui=bold

hi Normal           guifg=#ffffff  guibg=#1c1c1c       gui=NONE
hi Comment          guifg=#404040   guibg=italic
hi CursorLine       guifg=NONE      guibg=#202020
hi CursorLineNr     guifg=#00CCFF   guibg=NONE          gui=bold
hi CursorColumn     guifg=NONE      guibg=#202020
hi ColorColumn      guifg=NONE      guibg=#202020
hi linenr		    guifg=#202020   guibg=NONE
hi qfLineNr         guifg=#bcbcbc   guibg=NONE
hi NonText          guifg=#465457   guibg=NONE
hi SpecialKey       guifg=#465457   guibg=NONE
" hi Character       guifg=#E6DB74
" hi String          guifg=#E6DB74
" hi String          guifg=#ffff00 gui=italic
" hi String          guifg=#ffa56b gui=italic
" hi FoldColumn      guifg=#465457 guibg=#000000
" hi Folded          guifg=#465457 guibg=#000000
" hi FoldColumn      guifg=#353535 guibg=#1e1e1e
" hi FoldColumn      guifg=#465457 guibg=#000000
" hi Folded          guifg=#465457 guibg=#000000
" hi Folded      guifg=#f8f8f0 guibg=#13354A
" hi Label           guifg=#E6DB74               gui=none
" hi Pmenu           guifg=#526fff guibg=#f8f8f0
" FFD24A"
"guibg=#4f2039
" hi PmenuSel        guifg=#fd971f guibg=#465457 gui=bold,underline
" 303030
" hi PmenuSel        guifg=#fd971f guibg=#f8f8f0
" hi PmenuSbar                     guibg=#f8f8f0
" hi PmenuThumb      guifg=#a626a4 guibg=#f8f8f0
" " #a626a4

" hi PreProc         guifg=#03a9f4
" hi Search          guifg=#000000 guibg=#FFE792
" hi Search          guifg=#EEFF00 guibg=#433d32 gui=bold
" hi IncSearch       guifg=#FFD94c guibg=#000000
" marks
" hi SpecialComment  guifg=#7E8E91               gui=bold
" hi Title           guifg=#ef5939
" hi Typedef         guifg=#66D9EF
" hi Visual                        guibg=#403D3D
" hi CursorLine       guifg=NONE      guibg=#252525
" hi linenr		    guifg=#353535   guibg=NONE
" hi linenr		    guifg=#404040   guibg=NONE
"
" Highlights {{{1
" hi link Boolean             Constant
" hi link Character           Constant
" hi link Number              Constant
"
" hi link Float               Number
"
" hi link Define              Preproc
" hi link Include             Preproc
" hi link Macro               Preproc
" hi link PreCondit           PreProc
"
" hi link Conditional         Statement
" hi link Exception           Statement
" hi link HelpCommand         Statement
" hi link HelpExample         Statement
" hi link Keyword             Statement
" hi link Label               Statement
" hi link Operator            Statement
" hi link Repeat              Statement
"
" hi link StorageClass        Type
" hi link Structure           Type
" hi link Typedef             Type
"
" hi link Debug               Special
" hi link Delimiter           Special
" hi link SpecialChar         Special
" " hi link SpecialComment      Special
" hi link Tag                 Special

highlight pythonMethod guibg=NONE guifg=#87ff00 gui=NONE
highlight semshiAttribute guibg=NONE guifg=#CC78FA gui=bold
hi clear SignColumn
hi ALEWarningSign				guibg=NONE guifg=#87ff00 gui=NONE
hi ALEErrorSign					guibg=NONE guifg=#F92672 gui=bold


hi GitGutterAdd					guibg=NONE guifg=#00CCFF
hi GitGutterAddLine				guibg=NONE guifg=#007DFF
hi GitGutterChange				guibg=NONE guifg=#F553BF
hi GitGutterDelete				guibg=NONE guifg=#FF2600
hi GitGutterChangeDelete		guibg=NONE guifg=#AE81FF

hi ActiveWindow     guibg=#1c1c1c
hi InactiveWindow   guibg=#303030

hi NERDTreeExecFile		guifg=#87ff00 gui=bold
hi NERDTreeDirSlash		guifg=#f02e6e gui=bold
hi NERDTreeCWD			guibg=NONE guifg=#f02e6e
hi NERDTreeExecFile		guifg=#87ff00 gui=bold
hi NERDTreeDirSlash		guifg=#f02e6e gui=bold
hi NERDTreeCWD			guibg=NONE guifg=#f02e6e

hi pythonFunction       guifg=#87ff00 gui=bold
hi pythonParam guifg=#FF579C
hi semshiGlobal guifg=#FF79FF
hi Function guifg=#63ff51
hi Title guifg=#00cfff
hi pythonComment guifg=#505050 gui=italic
hi link GalaxyDiagnosticError LspDiagnosticsDefaultError
hi link GalaxyDiagnsticInfo LspDiagnosticsDefaultInformation
hi link GalaxyDiagnosticWarn LspDiagnosticsDefaultWarning
hi GalaxyBufferIcon guifg=#FFFF00 guibg=#303030
hi GalaxyGitIcon guifg=#F92672 guibg=#303030
" hi GalaxyFileName gui=bold guifg=#bbc2cf guibg=#303030
" hi GalaxyGitBranch gui=bold guifg=#63FF51 guibg=#303030
" hi GalaxyLineInfo  guibg=#23272e
hi Operator guifg=#FF4081
" hi pythonImport guifg=#40C057 " guifg=#03a9f4
hi pythonDocstring      guibg=NONE guifg=#465457 gui=italic
hi texCmdEnv guifg=#00CCFF
hi texEnvArgName guifg=#63FF51
hi Error guifg=#F20052 guibg=NONE gui=bold

" hi TSParameter guifg=#FFAB40 gui=italic
" hi TSParameter guifg=#FFAB40 gui=italic
hi TSRepeat guifg=#E040FB gui=bold
hi TSMethod guifg=#63FF51 gui=bold
hi TSConstant guifg=#5BA8FF  " #00CBCC
hi TSKeywordSelf guifg=#465457
hi TSParameter guifg=#00CBCC
hi TSField guifg=#CC78FA gui=bold
hi TSConstructor guifg=#007DFF gui=bold
hi TSField guifg=#FF79FF
hi TSFloat guifg=#FD971f
hi TSType guifg=#FF4081
hi TSInclude guifg=#AE81FF
hi TSConstant guifg=#15AABF gui=bold
hi TSOperator guifg=#d3ff00
hi TSKeywordReturn guifg=#F92672 gui=bold,italic
hi TSPunctBracket guifg=#8F9BFF gui=bold
hi TSKeywordFunction guifg=#B1FF85 gui=bold
hi TSConditional guifg=#F20052 gui=bold
hi TSString guifg=#FFFF00
" hi TSKeywordReturn guifg=#F20052 gui=bold
" hi TSKeywordFunction guifg=#F92672 gui=bold
"
hi pythonBuiltinObj guibg=NONE guifg=#d3ff00 gui=bold
hi pythonBoolean guibg=NONE guifg=#66D9EF gui=bold
hi link pythonImport        PreProc
hi link pythonFunction      Structure
hi link pythonExceptions    PreProc
hi link pythonBracketsi     PreProc
hi link pythonDef           Operator
hi link pythonSpecial       Boolean
hi link pythonDecorator     Type
hi link pythonAs            PreProc
hi link pythonConstant      Constant
hi link pythonFString       String
hi link pythonRawFString    String
hi pythonMagic      guibg=NONE guifg=#8e44ad gui=NONE
hi pythonRepeat     guibg=NONE guifg=#d3ff00 gui=NONE
hi pythonComment              guibg=NONE guifg=#494949 gui=italic
hi pythonWordOperator   guibg=NONE guifg=#d3ff00 gui=NONE
hi pythonOperator   guibg=NONE guifg=#F92672 gui=bold
hi pythonDocstring  guibg=NONE guifg=#606060 gui=NONE,italic
hi pythonConstant   guibg=NONE guifg=#FF9944 gui=bold
hi pythonNone       guibg=NONE guifg=#d3ff00 gui=bold
hi pythonExtraOperatori guibg=NONE guifg=#87ff00 gui=bold
hi pythonExtraPseudoOperator	guibg=NONE guifg=#87ff00 gui=bold
hi pythonParameters			guibg=NONE guifg=#656565 gui=bold
hi pythonClassParameters		guibg=NONE guifg=#87ff00 gui=bold,underline
hi pythonArg					guibg=NONE guifg=#87ff00 gui=bold
hi pythonLibraries			guibg=NONE guifg=#FF79FF gui=NONE
hi pythonVars				    guibg=NONE guifg=#fd971f gui=NONE
hi pythonParam				guibg=NONE guifg=#87ff00 gui=bold
hi pythonClassVars			guibg=NONE guifg=#f553bf gui=bold
hi pythonNote					guibg=NONE guifg=#d3ff00 gui=bold,italic
hi pythonArgs					guibg=NONE guifg=#007Dff gui=NONE
hi pythonKwargs				guibg=NONE guifg=#fd971f gui=bold,italic
hi pythonReturns				guibg=NONE guifg=#FFFFFF gui=bold,italic
hi pythonBrackets				guibg=NONE guifg=#f92672 gui=bold
hi pythonBracket              guibg=NONE guifg=#03CEFF gui=bold
hi pythonDottedName           guibg=NONE guifg=#EE4EB8 gui=bold
hi pythonFunction             guibg=NONE guifg=#87ff00 gui=bold
hi pythonMethod               guibg=NONE guifg=#00ebdb gui=bold

hi link pythonfString String
hi link pythonfDocstring String
hi link pythonStringModifier PreProc

" hi GitGutterAddLine				guibg=#NONE guifg=NONE
" hi pythonTripleQuotes      guibg=NONE guifg=#465457 gui=NONE
" hi pythonStatement		guibg=NONE guifg=#87ff00 gui=bold
" hi link pythonDocstring      SpecialComment
" hi pythonBytes      guibg=NONE guifg=#465457 gui=bold
" hi pythonString      guibg=NONE guifg=#465457 gui=bold
" hi link pythonDocstring        Comment
" hi GitBranchSeparator cleared
" hi pythonTSVariable guifg=#00CCFF
" hi link Title            semshiGlobal
" syntax match pythonMethod /\v[[:alpha:]_.]+\ze(\s?\()/

" LspDiagnosticsDefaultHint xxx guifg=#63FF51
" LspDiagnosticsDefaultError xxx guifg=#F20052



" \ hi pythonRainbowParentheses		guibg=NONE guifg=#FD971F gui=bold |
" \ hi pythonRainbow_o0				guibg=NONE guifg=#5af7b0 gui=bold |
" \ hi pythonRainbow_o1				guibg=NONE guifg=#FF2600 gui=bold |
" \ hi pythonRainbow_o2				guibg=NONE guifg=#007dff gui=bold |
" \ hi pythonRainbow_o3				guibg=NONE guifg=#eeff00 gui=bold |
" \ hi pythonRainbow_r0				guibg=NONE guifg=#5af7b0 gui=bold |
" \ hi pythonRainbow_r1				guibg=NONE guifg=#5af7b0 gui=bold |
" \ hi pythonRainbow_r2				guibg=NONE guifg=#5af7b0 gui=bold |
" \ hi pythonRainbow_r3				guibg=NONE guifg=#5af7b0 gui=bold |
" \ hi pythonRainbow_p0				guibg=NONE guifg=#5af7b0 gui=bold |
" \ hi pythonRainbow_p1				guibg=NONE guifg=#5af7b0 gui=bold |
" \ hi pythonRainbow_p2				guibg=NONE guifg=#5af7b0 gui=bold |
" \ hi pythonRainbow_p3				guibg=NONE guifg=#5af7b0 gui=bold


" hi rainbowParensShell16          guibg=NONE guifg=#03a9f4 gui=bold
" hi rainbowParensShell15          guibg=NONE guifg=#ffeb3b gui=bold
" hi rainbowParensShell14          guibg=NONE guifg=#673ab7 gui=bold
" hi rainbowParensShell13          guibg=NONE guifg=#4caf50 gui=bold
" hi rainbowParensShell12          guibg=NONE guifg=#e91e63 gui=bold
" hi rainbowParensShell11          guibg=NONE guifg=#009688 gui=bold
" hi rainbowParensShell10          guibg=NONE guifg=#ff5722 gui=bold
"


""#A267F5, #F3907e #ffe46b #fefeff
"MATERIAL COLOR SCHEME
" #f44336 #e91e63 #9c27b0 #673ab7 #3f51b5 #2196f3 #03a9f4 #00bcd4
" #009688 #4caf50 #8bc34a #cddc39 #ffeb3b #ffc107 #ff9800 #ff5722
" #795548 #9e9e9e #607d8b
"

" #808080
" #1c2022 #1c1c1c #171717 #303030 #292929 #455354 #465457 #71715E #7E8E91 #bcbcbc #f8f8f8 #ffffff
" #ef5939 #FF4050 #FF2600 #FF0000 #F03E4D #F92672 #fd971f #ffff00 #eeff00 #d3ff00 #87ff00 #26C99E
" #5af7b0 #70f0f0 #66D9EF #007dff #526fff #7070F0 #AE81FF #CC78FA #F553BF


" #EF5939 #FF2600 #F92672 #EE4EB8 #AE81FF  #007DFF #66D9EF #70F0F0
" #FD971F #87ff00 #DEFF00 #EEFF00 #FFFF00
" #1c2022 #CFCFCF #F8f8f0 #455354  #808080 #465457 #707070

"#282629 #474247 #656066 #847E85 #A29DA3 #C1BCC2 #E0DCE0 #FFFCFF #FF4050
"#F28144 #FFD24A #A4CC35 #26C99E #66BFFF #CC78FA #F553BF #F03E4D #F37735
"#EEBA21 #97BD2D #1FC598 #53A6E1 #BF65F0 #EE4EB8 #494b53 #696c77 #a0a1a7
"#c2c2c3 #0184bc #4078f2 #a626a4 #50a14f #e45649 #ca1243 #986801 #c18401
"#fafafa #9e9e9e #f0f0f0 #526fff #0083be #e7e9e1 #d3d3d3 #d0d0d0 #dfdfdf
"
"#1E2541 #EEFFFF"#EEFFFF #1E2541 #F0719B #5AF7B0 #FFA56B #57C7FF #C792EA
"#89DDFF #EEFFFF #354274 #F02E6E #2CE592 #FF8537 #1DA0E2 #A742EA #47BAE8
"#DEE6E7 #2A335A
" hi link pythonStatement		 Structure
"
"
" colour1 = dark gray
" colour2 = gray
" colour3 = light gray
" colour4 = light blue
" colour5 = yellow
" colour6 = dark gray
" colour7 = white
" colour8 = dark gray
" colour9 = yellow
" colour10 = pink
" colour11 = green
" colour12 = light gray
" colour13 = white
" colour14 = dark gray
" colour15 = dark gray
" colour16 = red
" colour17 = white

"

" Design templates
" #272727 " background
" #747474 " foreground
" #FF652F " orange
" #FFE400 " yellow
" #14a76c " green
" #D83F87 " pink
" #F8E9A1
" #F76C6C
" #A8D0E6
" #A64AC9
" #86C232
" #17E9E0
" #474B4F
" #6B6E70
" #FAED26
" #A1C3D1
" --------
" #B39BC8
" #F0EBF4
" #F172A1
" #E64398
" --------
" #C34271
" #F070A1
" #16FFBD
" #12C998
" #439F76
" --------
"  echo -ne '\e]10;#A0A0A0\a'
" #1B1D1E
" #A0A0A0
" #1B1D1E
" #F92672
" #82B414
" #FD971F
" #268BD2
" #8C54FE
" #56C2D6
" #CCCCC6
" #FF5995
" #505354
" #B7EB46
" #FEED6C
" #62ADE3
" #BFA0FE
" #94D8E5
" #F8F8F2



" Must be at the end, because of ctermbg=234 bug.
" https://groups.google.com/forum/#!msg/vim_dev/afPqwAFNdrU/nqh6tOM87QUJ
set background=dark


"R O Y G T B M P
" NERDTree
""""""""""""
" Clean up "
""""""""""""

 " #00CBCC
""""""""""""
" Clean up "
""""""""""""


unlet s:shade0 s:shade1 s:shade2 s:shade3 s:shade4 s:shade5 s:shade6 s:shade7 s:red0 s:orange0 s:yellow0 s:green0 s:teal0 s:blue0 s:magenta0 s:pink0 s:red1 s:orange1 s:yellow1 s:green1 s:teal1 s:blue1 s:magenta1 s:pink1
