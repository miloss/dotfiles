" Vim color file -- Zenburn Mng
" Hacked by combining Zenburn and Mango themes
" Author: Milos Popovic <the.elephant@gmail.com>
" Version: 0.0.1

" edited zenburn_high_Contrast theme look


" Set defaults, but keep any parameters already set by the user
if ! exists("g:zenburn_high_Contrast")
    let g:zenburn_high_Contrast = 0
endif

if ! exists("g:zenburn_color_also_Ignore")
    let g:zenburn_color_also_Ignore = 0
endif

if ! exists("g:zenburn_alternate_Error")
    let g:zenburn_alternate_Error = 0
endif

if ! exists("g:zenburn_force_dark_Background")
    let g:zenburn_force_dark_Background = 0
endif

if ! exists("g:zenburn_alternate_Visual")
    let g:zenburn_alternate_Visual = 0
endif

if ! exists("g:zenburn_alternate_Include")
    let g:zenburn_alternate_Include = 0
endif

if ! exists("g:zenburn_unified_CursorColumn")
    let g:zenburn_unified_CursorColumn = 0
endif

if ! exists("g:zenburn_old_Visual")
    let g:zenburn_old_Visual = 0
endif

if ! exists("g:zenburn_disable_ctags_highlighting_support")
    " enabled by default
    let g:zenburn_disable_ctags_highlighting_support = 0
endif

" -----------------------------------------------

set background=dark
hi clear
if exists("syntax_on")
    syntax reset
endif
let g:colors_name="zenburnmng"

" Colors: {
hi Black    ctermfg=240         ctermbg=NONE        cterm=NONE
hi Blue     ctermfg=68          ctermbg=NONE        cterm=NONE
hi Green    ctermfg=107         ctermbg=NONE        cterm=NONE
hi Orange   ctermfg=214         ctermbg=NONE        cterm=NONE
hi Orange2  ctermfg=130         ctermbg=NONE        cterm=NONE
hi Peach    ctermfg=222         ctermbg=NONE        cterm=NONE
hi Pink     ctermfg=205         ctermbg=NONE        cterm=NONE
hi Pink2    ctermfg=211         ctermbg=NONE        cterm=NONE
hi Purple   ctermfg=153         ctermbg=NONE        cterm=NONE
hi Purple2  ctermfg=164         ctermbg=NONE        cterm=NONE
hi Red      ctermfg=203         ctermbg=NONE        cterm=NONE
hi Silver   ctermfg=245         ctermbg=NONE        cterm=NONE
hi White    ctermfg=255         ctermbg=NONE        cterm=NONE
hi Violet   ctermfg=63          ctermbg=NONE        cterm=NONE
" }

" Entering Kurt zone
if &t_Co > 255
    hi Boolean         ctermfg=181
    hi Character       ctermfg=181   cterm=bold
    hi Comment         ctermfg=130
    hi Conditional     ctermfg=223   cterm=bold
    hi Constant        ctermfg=181   cterm=bold
    hi Cursor          ctermfg=233   ctermbg=109     cterm=bold
    hi Debug           ctermfg=181   cterm=bold
    hi Define          ctermfg=223   cterm=bold
    hi Delimiter       ctermfg=245
    hi DiffAdd         ctermfg=66    ctermbg=237     cterm=bold
    hi DiffChange      ctermbg=236
    hi DiffDelete      ctermfg=236   ctermbg=238
    hi DiffText        ctermfg=217   ctermbg=237     cterm=bold
    hi Directory       ctermfg=109   cterm=bold
    hi ErrorMsg        ctermfg=115   ctermbg=236     cterm=bold
    hi Exception       ctermfg=249   cterm=bold
    hi Float           ctermfg=251
    hi Function        ctermfg=228
    hi Identifier      ctermfg=203
    hi IncSearch       ctermbg=228   ctermfg=238
    hi Keyword         ctermfg=63   
    hi Label           ctermfg=187   cterm=underline
    hi LineNr          ctermfg=248   ctermbg=233
    hi Macro           ctermfg=223   cterm=bold
    hi ModeMsg         ctermfg=223   cterm=none
    hi MoreMsg         ctermfg=15    cterm=bold
    hi Number          ctermfg=203
    hi Operator        ctermfg=230
    hi PreCondit       ctermfg=180   cterm=bold
    hi PreProc         ctermfg=223   cterm=bold
    hi Question        ctermfg=15    cterm=bold
    hi Repeat          ctermfg=223   cterm=bold
    hi Search          ctermfg=230   ctermbg=236
    hi SpecialChar     ctermfg=181   cterm=bold
    hi SpecialComment  ctermfg=108   cterm=bold
    hi Special         ctermfg=181
    hi SpecialKey      ctermfg=151
    hi Statement       ctermfg=187   ctermbg=234     cterm=none
    hi StatusLine      ctermfg=236   ctermbg=186
    hi StatusLineNC    ctermfg=235   ctermbg=108
    hi StorageClass    ctermfg=249   cterm=bold
    hi String          ctermfg=22
    hi Structure       ctermfg=229   cterm=bold
    hi Tag             ctermfg=181   cterm=bold
    hi Title           ctermfg=7     ctermbg=234     cterm=bold
    hi Todo            ctermfg=14    ctermbg=234     cterm=bold
    hi Typedef         ctermfg=253   cterm=bold
    hi Type            ctermfg=187   cterm=bold
    hi Underlined      ctermfg=188   ctermbg=234     cterm=bold
    hi VertSplit       ctermfg=236   ctermbg=65
    hi VisualNOS       ctermfg=236   ctermbg=210     cterm=bold
    hi WarningMsg      ctermfg=15    ctermbg=236     cterm=bold
    hi WildMenu        ctermbg=236   ctermfg=194     cterm=bold

    " spellchecking, always "bright" background
    hi SpellLocal ctermfg=14  ctermbg=237
    hi SpellBad   ctermfg=9   ctermbg=237
    hi SpellCap   ctermfg=12  ctermbg=237
    hi SpellRare  ctermfg=13  ctermbg=237

    " pmenu
    hi PMenu      ctermfg=248  ctermbg=0
    hi PMenuSel   ctermfg=223 ctermbg=235


		" 'high Contrast' scheme below
    hi Normal ctermfg=188 ctermbg=233
    " hi Normal ctermfg=188 ctermbg=none
    hi NonText         ctermfg=238

    if exists("g:zenburn_color_also_Ignore") && g:zenburn_color_also_Ignore
    	hi Ignore          ctermfg=238
    endif

    " hc mode, darker CursorLine, default 236
    hi CursorLine      ctermbg=233   cterm=none

    if exists("g:zenburn_unified_CursorColumn") && g:zenburn_unified_CursorColumn
    	hi CursorColumn      ctermbg=233   cterm=none
    else
      hi CursorColumn      ctermbg=235   cterm=none
    endif

    if exists("g:zenburn_alternate_Error") && g:zenburn_alternate_Error
        " use more jumpy Error
        hi Error ctermfg=210 ctermbg=52 gui=bold
    else
        " default is something more zenburn-compatible
        hi Error ctermfg=228 ctermbg=95 gui=bold
    endif
endif


" JavaScript: {
" Other
hi link javaScriptSpecial               Pink
hi link javaScriptFloat                 Red

" Browser/DOM
hi link javaScriptHtmlEvents            Pink2
hi link javaScriptDomElemAttrs          Purple
hi link javaScriptHtmlElemAttrs         Purple
hi link javaScriptHtmlElemFuncs         Pink
hi link javaScriptCssStyles             Purple

" JSDoc
hi link javaScriptDocType         Blue
hi link javaScriptDocTypeNoParam  Blue
hi link javaScriptDocParam        Silver

" JavaScript
"prototype
hi link javaScriptPrototype       Pink2
" import export
hi link javaScriptSource          Red
"const undefined var void yield 
hi link javaScriptType            Peach
"delete new in instanceof let typeof
hi link javaScriptOperator        Purple
"true false
hi link javaScriptBoolean         Purple
"null
hi link javaScriptNull            Purple2

" this self
" if else
hi link javaScriptConditional     Violet
" do while for
hi link javaScriptRepeat          Violet
" return
hi link javaScriptBranch          Purple
" try catch throw with finally
hi link javaScriptStatement       Violet

"syntax keyword javaScriptGlobalObjects  Array Boolean Date Function Infinity JavaArray JavaClass JavaObject JavaPackage kind Math Number NaN Object Packages RegExp String Undefined java netscape sun
hi link javaScriptGlobalObjects   Pink2
"syntax keyword javaScriptExceptions     Error EvalError RangeError ReferenceError SyntaxError TypeError URIError
hi link javaScriptExceptions      Red
"syntax keyword javaScriptFutureKeys     abstract enum int short boolean export interface static byte extends long super char final native synchronized class float package throws goto private transient debugger implements protected volatile double import public
hi link javaScriptFutureKeys      Black
"  }

" PHP: {
hi link phpFunctions          Violet
" }

" HTML: {
hi link htmlTag               Blue
hi link htmlTagName           Blue
"}

" Python: {
hi link pythonPreCondit       Blue
" }

" CSS_LESS: {
hi link lessVariable      Blue
hi link lessFunction      Purple
hi link lessFuncDef       Purple
hi link cssBraces         Peach
hi link cssTagName        Orange
hi link cssClassName      Peach
hi link cssCommonAttr     Pink
hi link cssFontAttr       Pink
hi link cssTextAttr       Pink
hi link cssBoxAttr        Pink
hi link cssColorAttr      Pink
hi link cssRenderAttr     Pink
hi link cssTableAttr      Pink
hi link cssAuralAttr      Pink
hi link cssUIAttr         Pink
hi link cssGeneratedContentAttr      Pink
"}















" check for ctags-highlighting
if exists("g:loaded_ctags_highlighting") && g:loaded_ctags_highlighting && ! g:zenburn_disable_ctags_highlighting_support
    " internal
    let _zenburn_ctags = 1
endif


" gui (gvim) stuff below

hi Boolean         guifg=#dca3a3
hi Character       guifg=#dca3a3 gui=bold
hi Comment         guifg=#7f9f7f gui=italic
hi Conditional     guifg=#f0dfaf gui=bold
hi Constant        guifg=#dca3a3 gui=bold
hi Cursor          guifg=#000d18 guibg=#8faf9f gui=bold
hi Debug           guifg=#bca3a3 gui=bold
hi Define          guifg=#ffcfaf gui=bold
hi Delimiter       guifg=#8f8f8f
hi DiffAdd         guifg=#709080 guibg=#313c36 gui=bold
hi DiffChange      guibg=#333333
hi DiffDelete      guifg=#333333 guibg=#464646
hi DiffText        guifg=#ecbcbc guibg=#41363c gui=bold
hi Directory       guifg=#9fafaf gui=bold
hi ErrorMsg        guifg=#80d4aa guibg=#2f2f2f gui=bold
hi Exception       guifg=#c3bf9f gui=bold
hi Float           guifg=#c0bed1
hi FoldColumn      guifg=#93b3a3 guibg=#3f4040
hi Folded          guifg=#93b3a3 guibg=#3f4040
hi Function        guifg=#efef8f
hi Identifier      guifg=#efdcbc
hi IncSearch       guibg=#f8f893 guifg=#385f38
hi Keyword         guifg=#f0dfaf gui=bold
hi Label           guifg=#dfcfaf gui=underline
hi Macro           guifg=#ffcfaf gui=bold
hi ModeMsg         guifg=#ffcfaf gui=none
hi MoreMsg         guifg=#ffffff gui=bold
hi Number          guifg=#8cd0d3
hi Operator        guifg=#f0efd0
hi PreCondit       guifg=#dfaf8f gui=bold
hi PreProc         guifg=#ffcfaf gui=bold
hi Question        guifg=#ffffff gui=bold
hi Repeat          guifg=#ffd7a7 gui=bold
hi Search          guifg=#ffffe0 guibg=#284f28
hi SpecialChar     guifg=#dca3a3 gui=bold
hi SpecialComment  guifg=#82a282 gui=bold
hi Special         guifg=#cfbfaf
hi SpecialKey      guifg=#9ece9e
hi Statement       guifg=#e3ceab gui=none
hi StatusLine      guifg=#313633 guibg=#ccdc90
hi StatusLineNC    guifg=#2e3330 guibg=#88b090
hi StorageClass    guifg=#c3bf9f gui=bold
hi String          guifg=#cc9393
hi Structure       guifg=#efefaf gui=bold
hi Tag             guifg=#e89393 gui=bold
hi Title           guifg=#efefef gui=bold
hi Todo            guifg=#dfdfdf guibg=bg gui=bold
hi Typedef         guifg=#dfe4cf gui=bold
hi Type            guifg=#dfdfbf gui=bold
hi Underlined      guifg=#dcdccc gui=underline
hi VertSplit       guifg=#2e3330 guibg=#688060
hi VisualNOS       guifg=#333333 guibg=#f18c96 gui=bold,underline
hi WarningMsg      guifg=#ffffff guibg=#333333 gui=bold
hi WildMenu        guibg=#2c302d guifg=#cbecd0 gui=underline

hi SpellBad   guisp=#bc6c4c guifg=#dc8c6c
hi SpellCap   guisp=#6c6c9c guifg=#8c8cbc
hi SpellRare  guisp=#bc6c9c guifg=#bc8cbc
hi SpellLocal guisp=#7cac7c guifg=#9ccc9c



if exists("g:zenburn_force_dark_Background") && g:zenburn_force_dark_Background
    " Force dark background, because of a bug in VIM:  VIM sets background
    " automatically during "hi Normal ctermfg=X"; it misinterprets the high
    " value (234 or 237 above) as a light color, and wrongly sets background to
    " light.  See ":help highlight" for details.
    set background=dark
endif

if exists("g:zenburn_high_Contrast") && g:zenburn_high_Contrast
    " use new darker background
    hi Normal          guifg=#dcdccc guibg=#1f1f1f
    hi CursorLine      guibg=#121212 gui=bold
    if exists("g:zenburn_unified_CursorColumn") && g:zenburn_unified_CursorColumn
        hi CursorColumn    guibg=#121212 gui=bold
    else
        hi CursorColumn    guibg=#2b2b2b
    endif
    hi Pmenu           guibg=#242424 guifg=#ccccbc
    hi PMenuSel        guibg=#353a37 guifg=#ccdc90 gui=bold
    hi PmenuSbar       guibg=#2e3330 guifg=#000000
    hi PMenuThumb      guibg=#a0afa0 guifg=#040404
    hi MatchParen      guifg=#f0f0c0 guibg=#383838 gui=bold
    hi SignColumn      guifg=#9fafaf guibg=#181818 gui=bold
    hi TabLineFill     guifg=#cfcfaf guibg=#181818 gui=bold
    hi TabLineSel      guifg=#efefef guibg=#1c1c1b gui=bold
    hi TabLine         guifg=#b6bf98 guibg=#181818 gui=bold
    hi NonText         guifg=#404040 gui=bold
    
    hi LineNr          guifg=#9fafaf guibg=#161616
else
    " Original, lighter background
    hi Normal          guifg=#dcdccc guibg=#3f3f3f
    hi CursorLine      guibg=#434443
    if exists("g:zenburn_unified_CursorColumn") && g:zenburn_unified_CursorColumn
        hi CursorColumn    guibg=#434343
    else
        hi CursorColumn    guibg=#4f4f4f
    endif
    hi Pmenu           guibg=#2c2e2e guifg=#9f9f9f
    hi PMenuSel        guibg=#242424 guifg=#d0d0a0 gui=bold
    hi PmenuSbar       guibg=#2e3330 guifg=#000000
    hi PMenuThumb      guibg=#a0afa0 guifg=#040404
    hi MatchParen      guifg=#b2b2a0 guibg=#2e2e2e gui=bold
    hi SignColumn      guifg=#9fafaf guibg=#343434 gui=bold
    hi TabLineFill     guifg=#cfcfaf guibg=#353535 gui=bold
    hi TabLineSel      guifg=#efefef guibg=#3a3a39 gui=bold
    hi TabLine         guifg=#b6bf98 guibg=#353535 gui=bold
    hi NonText         guifg=#5b605e gui=bold
    
    hi LineNr          guifg=#9fafaf guibg=#262626
endif

if exists("g:zenburn_old_Visual") && g:zenburn_old_Visual
    if exists("g:zenburn_alternate_Visual") && g:zenburn_alternate_Visual
        " Visual with more contrast, thanks to Steve Hall & Cream posse
        " gui=none fixes weird highlight problem in at least GVim 7.0.66, thanks to Kurt Maier
        hi Visual          guifg=#000000 guibg=#71d3b4 gui=none
        hi VisualNOS       guifg=#000000 guibg=#71d3b4 gui=none
    else
        " use default visual
        hi Visual          guifg=#233323 guibg=#71d3b4 gui=none
        hi VisualNOS       guifg=#233323 guibg=#71d3b4 gui=none
    endif
else
    " new Visual style
    if exists("g:zenburn_high_Contrast") && g:zenburn_high_Contrast
        " high contrast
        "hi Visual        guibg=#304a3d
        "hi VisualNos     guibg=#304a3d
        "TODO no nice greenish in console, 65 is closest. use full black instead,
        "although i like the green..!
        hi Visual        guibg=#0f0f0f
        hi VisualNos     guibg=#0f0f0f
        if &t_Co > 255
            hi Visual ctermbg=0
        endif
    else
        " low contrast
        hi Visual        guibg=#2f2f2f
        hi VisualNOS     guibg=#2f2f2f

        if &t_Co > 255
            hi Visual    ctermbg=235
            hi VisualNOS ctermbg=235
        endif
    endif
endif

if exists("g:zenburn_alternate_Error") && g:zenburn_alternate_Error
    " use more jumpy Error
    hi Error        guifg=#e37170 guibg=#664040 gui=bold
else
    " default is something more zenburn-compatible
    hi Error        guifg=#e37170 guibg=#3d3535 gui=none
endif

if exists("g:zenburn_alternate_Include") && g:zenburn_alternate_Include
    " original setting
    hi Include      guifg=#ffcfaf gui=bold
else
    " new, less contrasted one
    hi Include      guifg=#dfaf8f gui=bold
endif

if exists("g:zenburn_color_also_Ignore") && g:zenburn_color_also_Ignore
    " color the Ignore groups
    " note: if you get strange coloring for your files, turn this off (unlet)
    hi Ignore guifg=#545a4f
endif

" new tabline and fold column
if exists("g:zenburn_high_Contrast") && g:zenburn_high_Contrast
    hi FoldColumn    guibg=#161616
    hi Folded        guibg=#161616
    hi TabLine       guifg=#88b090 guibg=#313633 gui=none
    hi TabLineSel    guifg=#ccd990 guibg=#222222
    hi TabLineFill   guifg=#88b090 guibg=#313633 gui=none
    
    hi SpecialKey    guibg=#242424
    
    if &t_Co > 255
        hi FoldColumn    ctermbg=233 ctermfg=109
        hi Folded        ctermbg=233 ctermfg=109
        hi TabLine       ctermbg=236 ctermfg=108 cterm=none
        hi TabLineSel    ctermbg=235 ctermfg=186 cterm=bold
        hi TabLineFill   ctermbg=236 ctermfg=236
    endif
else
    hi FoldColumn    guibg=#333333
    hi Folded        guibg=#333333
    hi TabLine       guifg=#d0d0b8 guibg=#222222 gui=none
    hi TabLineSel    guifg=#f0f0b0 guibg=#333333 gui=bold
    hi TabLineFill   guifg=#dccdcc guibg=#101010 gui=none
    
    hi SpecialKey    guibg=#444444

    if &t_Co > 255
        hi FoldColumn    ctermbg=236 ctermfg=109
        hi Folded        ctermbg=236 ctermfg=109
        hi TabLine       ctermbg=235 ctermfg=187 cterm=none
        hi TabLineSel    ctermbg=236 ctermfg=229 cterm=bold
        hi TabLineFill   ctermbg=233 ctermfg=233
    endif
endif

" EXPERIMENTAL ctags_highlighting support
" link/set sensible defaults here;
"
" For now I mostly link to subset of Zenburn colors, the linkage is based
" on appearance, not semantics. In later versions I might define more new colours.
"
" HELP NEEDED to make this work properly.
if exists("_zenburn_ctags") && _zenburn_ctags

        " Highlighter seems to think a lot of things are global variables even
        " though they're not. Example: python method-local variable is
        " coloured as a global variable. They should not be global, since
        " they're not visible outside the method.
        " If this is some very bright colour group then things look bad.
    	hi link CTagsGlobalVariable    Identifier
        
        hi CTagsClass             guifg=#acd0b3
        if &t_Co > 255
            hi CTagsClass         ctermfg=115
        endif

        hi link CTagsImport       Statement
        hi link CTagsMember       Function

    	hi link CTagsGlobalConstant    Constant
  
        " These do not yet have support, I can't get them to appear
        hi link EnumerationValue  Float
        hi link EnumerationName   Identifier
        hi link DefinedName       WarningMsg
    	hi link LocalVariable     WarningMsg
    	hi link Structure         WarningMsg
    	hi link Union             WarningMsg
endif

" TODO check for more obscure syntax groups that they're ok


