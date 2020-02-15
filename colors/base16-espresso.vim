" Espresso by Alex Mirrington (https://github.com/alexmirrington)

"
" Theme setup
"

hi clear
syntax reset
let g:colors_name = 'base16-espresso'

"
" Color definitions
"

let g:base00 = { 'gui': '#2d2d2d', 'cterm': '00' }
let g:base01 = { 'gui': '#393939', 'cterm': '10' }
let g:base02 = { 'gui': '#515151', 'cterm': '11' }
let g:base03 = { 'gui': '#777777', 'cterm': '08' }
let g:base04 = { 'gui': '#b4b7b4', 'cterm': '12' }
let g:base05 = { 'gui': '#cccccc', 'cterm': '07' }
let g:base06 = { 'gui': '#e0e0e0', 'cterm': '13' }
let g:base07 = { 'gui': '#ffffff', 'cterm': '15' }
let g:base08 = { 'gui': '#d25252', 'cterm': '01' }
let g:base09 = { 'gui': '#f9a959', 'cterm': '09' }
let g:base0A = { 'gui': '#ffc66d', 'cterm': '03' }
let g:base0B = { 'gui': '#a5c261', 'cterm': '02' }
let g:base0C = { 'gui': '#bed6ff', 'cterm': '06' }
let g:base0D = { 'gui': '#6c99bb', 'cterm': '04' }
let g:base0E = { 'gui': '#d197d9', 'cterm': '05' }
let g:base0F = { 'gui': '#f97394', 'cterm': '14' }

"
" Terminal colors
"

if has('nvim')
  let g:terminal_color_0  = g:base00.gui
  let g:terminal_color_1  = g:base08.gui
  let g:terminal_color_2  = g:base0B.gui
  let g:terminal_color_3  = g:base0A.gui
  let g:terminal_color_4  = g:base0D.gui
  let g:terminal_color_5  = g:base0E.gui
  let g:terminal_color_6  = g:base0C.gui
  let g:terminal_color_7  = g:base05.gui
  let g:terminal_color_8  = g:base03.gui
  let g:terminal_color_9  = g:base08.gui
  let g:terminal_color_10 = g:base0B.gui
  let g:terminal_color_11 = g:base0A.gui
  let g:terminal_color_12 = g:base0D.gui
  let g:terminal_color_13 = g:base0E.gui
  let g:terminal_color_14 = g:base0C.gui
  let g:terminal_color_15 = g:base07.gui
  let g:terminal_color_background = g:terminal_color_0
  let g:terminal_color_foreground = g:terminal_color_5
  if &background == 'light'
    let g:terminal_color_background = g:terminal_color_7
    let g:terminal_color_foreground = g:terminal_color_2
  endif
elseif has('terminal')
  let g:terminal_ansi_colors = [
    \ g:base00.gui,
    \ g:base08.gui,
    \ g:base0B.gui,
    \ g:base0A.gui,
    \ g:base0D.gui,
    \ g:base0E.gui,
    \ g:base0C.gui,
    \ g:base05.gui,
    \ g:base03.gui,
    \ g:base08.gui,
    \ g:base0B.gui,
    \ g:base0A.gui,
    \ g:base0D.gui,
    \ g:base0E.gui,
    \ g:base0C.gui,
    \ g:base07.gui,
    \ ]
endif

"
" Highlight function
"

function! Base16hi(group, fg, bg, attr, sp)
  if !empty(a:fg)
    exec 'hi ' . a:group . ' guifg=' . a:fg.gui . ' ctermfg=' . a:fg.cterm
  endif
  if !empty(a:bg)
    exec 'hi ' . a:group . ' guibg=' . a:bg.gui . ' ctermbg=' . a:bg.cterm
  endif
  if !empty(a:attr)
    exec 'hi ' . a:group . ' gui=' . a:attr . ' cterm=' . a:attr
  endif
  if !empty(a:sp)
    exec 'hi ' . a:group . ' guisp=' . a:sp.gui
  endif
endfunction

"
" Highlights
"

" Editor
call Base16hi('Bold',         '',       '',       'bold', '')
call Base16hi('ColorColumn',  '',       g:base01, 'none', '')
call Base16hi('Conceal',      g:base0D, g:base00, '',     '')
call Base16hi('Cursor',       g:base00, g:base05, '',     '')
call Base16hi('CursorColumn', '',       g:base01, 'none', '')
call Base16hi('CursorLine',   '',       g:base01, 'none', '')
call Base16hi('CursorLineNr', g:base04, g:base01, '',     '')
call Base16hi('Debug',        g:base08, '',       '',     '')
call Base16hi('Directory',    g:base0D, '',       '',     '')
call Base16hi('Error',        g:base00, g:base08, '',     '')
call Base16hi('ErrorMsg',     g:base08, g:base00, '',     '')
call Base16hi('Exception',    g:base08, '',       '',     '')
call Base16hi('FoldColumn',   g:base0C, g:base01, '',     '')
call Base16hi('Folded',       g:base03, g:base01, '',     '')
call Base16hi('IncSearch',    g:base01, g:base09, 'none', '')
call Base16hi('Italic',       '',       '',       'none', '')
call Base16hi('LineNr',       g:base03, g:base01, '',     '')
call Base16hi('Macro',        g:base08, '',       '',     '')
call Base16hi('MatchParen',   '',       g:base03, '',     '')
call Base16hi('ModeMsg',      g:base0B, '',       '',     '')
call Base16hi('MoreMsg',      g:base0B, '',       '',     '')
call Base16hi('NonText',      g:base03, '',       '',     '')
call Base16hi('Normal',       g:base05, g:base00, '',     '')
call Base16hi('PMenu',        g:base05, g:base01, 'none', '')
call Base16hi('PMenuSel',     g:base01, g:base05, '',     '')
call Base16hi('Question',     g:base0D, '',       '',     '')
call Base16hi('QuickFixLine', '',       g:base01, 'none', '')
call Base16hi('Search',       g:base01, g:base0A, '',     '')
call Base16hi('SignColumn',   g:base03, g:base01, '',     '')
call Base16hi('SpecialKey',   g:base03, '',       '',     '')
call Base16hi('StatusLine',   g:base04, g:base02, 'none', '')
call Base16hi('StatusLineNC', g:base03, g:base01, 'none', '')
call Base16hi('Substitute',   g:base01, g:base0A, 'none', '')
call Base16hi('TabLine',      g:base03, g:base01, 'none', '')
call Base16hi('TabLineFill',  g:base03, g:base01, 'none', '')
call Base16hi('TabLineSel',   g:base0B, g:base01, 'none', '')
call Base16hi('Title',        g:base0D, '',       'none', '')
call Base16hi('TooLong',      g:base08, '',       '',     '')
call Base16hi('Underlined',   g:base08, '',       '',     '')
call Base16hi('VertSplit',    g:base02, g:base02, 'none', '')
call Base16hi('Visual',       '',       g:base02, '',     '')
call Base16hi('VisualNOS',    g:base08, '',       '',     '')
call Base16hi('WarningMsg',   g:base08, '',       '',     '')
call Base16hi('WildMenu',     g:base08, g:base0A, '',     '')

" Syntax
call Base16hi('Boolean',      g:base09, '',       '',     '')
call Base16hi('Character',    g:base08, '',       '',     '')
call Base16hi('Comment',      g:base03, '',       '',     '')
call Base16hi('Conditional',  g:base0E, '',       '',     '')
call Base16hi('Constant',     g:base09, '',       '',     '')
call Base16hi('Define',       g:base0E, '',       'none', '')
call Base16hi('Delimiter',    g:base0F, '',       '',     '')
call Base16hi('Float',        g:base09, '',       '',     '')
call Base16hi('Function',     g:base0D, '',       '',     '')
call Base16hi('Identifier',   g:base08, '',       'none', '')
call Base16hi('Include',      g:base0D, '',       '',     '')
call Base16hi('Keyword',      g:base0E, '',       '',     '')
call Base16hi('Label',        g:base0A, '',       '',     '')
call Base16hi('Number',       g:base09, '',       '',     '')
call Base16hi('Operator',     g:base05, '',       'none', '')
call Base16hi('PreProc',      g:base0A, '',       '',     '')
call Base16hi('Repeat',       g:base0A, '',       '',     '')
call Base16hi('Special',      g:base0C, '',       '',     '')
call Base16hi('SpecialChar',  g:base0F, '',       '',     '')
call Base16hi('Statement',    g:base08, '',       '',     '')
call Base16hi('StorageClass', g:base0A, '',       '',     '')
call Base16hi('String',       g:base0B, '',       '',     '')
call Base16hi('Structure',    g:base0E, '',       '',     '')
call Base16hi('Tag',          g:base0A, '',       '',     '')
call Base16hi('Todo',         g:base0A, g:base01, '',     '')
call Base16hi('Type',         g:base0A, '',       'none', '')
call Base16hi('Typedef',      g:base0A, '',       '',     '')

" C
call Base16hi('cOperator',  g:base0C, '', '', '')
call Base16hi('cPreCondit', g:base0E, '', '', '')

" C#
call Base16hi('csAttribute',            g:base0A, '', '', '')
call Base16hi('csClass',                g:base0A, '', '', '')
call Base16hi('csContextualStatement',  g:base0E, '', '', '')
call Base16hi('csModifier',             g:base0E, '', '', '')
call Base16hi('csNewDecleration',       g:base08, '', '', '')
call Base16hi('csType',                 g:base08, '', '', '')
call Base16hi('csUnspecifiedStatement', g:base0D, '', '', '')

" CSS
call Base16hi('cssBraces',    g:base05, '', '', '')
call Base16hi('cssClassName', g:base0E, '', '', '')
call Base16hi('cssColor',     g:base0C, '', '', '')

" Diff
call Base16hi('DiffAdd',     g:base0B, g:base01, '', '')
call Base16hi('DiffAdded',   g:base0B, g:base00, '', '')
call Base16hi('DiffChange',  g:base03, g:base01, '', '')
call Base16hi('DiffDelete',  g:base08, g:base01, '', '')
call Base16hi('DiffFile',    g:base08, g:base00, '', '')
call Base16hi('DiffLine',    g:base0D, g:base00, '', '')
call Base16hi('DiffNewFile', g:base0B, g:base00, '', '')
call Base16hi('DiffRemoved', g:base08, g:base00, '', '')
call Base16hi('DiffText',    g:base0D, g:base01, '', '')

" Git
call Base16hi('gitcommitBranch',        g:base09, '', 'bold', '')
call Base16hi('gitcommitComment',       g:base03, '', '',     '')
call Base16hi('gitcommitDiscarded',     g:base03, '', '',     '')
call Base16hi('gitcommitDiscardedFile', g:base08, '', 'bold', '')
call Base16hi('gitcommitDiscardedType', g:base0D, '', '',     '')
call Base16hi('gitcommitHeader',        g:base0E, '', '',     '')
call Base16hi('gitcommitOverflow',      g:base08, '', '',     '')
call Base16hi('gitcommitSelected',      g:base03, '', '',     '')
call Base16hi('gitcommitSelectedFile',  g:base0B, '', 'bold', '')
call Base16hi('gitcommitSelectedType',  g:base0D, '', '',     '')
call Base16hi('gitcommitSummary',       g:base0B, '', '',     '')
call Base16hi('gitcommitUnmergedFile',  g:base08, '', 'bold', '')
call Base16hi('gitcommitUnmergedType',  g:base0D, '', '',     '')
call Base16hi('gitcommitUntracked',     g:base03, '', '',     '')
call Base16hi('gitcommitUntrackedFile', g:base0A, '', '',     '')

" GitGutter
call Base16hi('GitGutterAdd',          g:base0B, g:base01, '', '')
call Base16hi('GitGutterChange',       g:base0D, g:base01, '', '')
call Base16hi('GitGutterChangeDelete', g:base0E, g:base01, '', '')
call Base16hi('GitGutterDelete',       g:base08, g:base01, '', '')

" HTML
call Base16hi('htmlBold',   g:base0A, '', '', '')
call Base16hi('htmlEndTag', g:base05, '', '', '')
call Base16hi('htmlItalic', g:base0E, '', '', '')
call Base16hi('htmlTag',    g:base05, '', '', '')

" Java
call Base16hi('javaOperator', g:base0D, '', '', '')

" JavaScript
call Base16hi('javaScript',          g:base05, '', '', '')
call Base16hi('javaScriptBraces',    g:base05, '', '', '')
call Base16hi('javaScriptNumber',    g:base09, '', '', '')
call Base16hi('jsBuiltins',          g:base0A, '', '', '')
call Base16hi('jsClassDefinition',   g:base0A, '', '', '')
call Base16hi('jsClassFuncName',     g:base0D, '', '', '')
call Base16hi('jsClassMethodType',   g:base0E, '', '', '')
call Base16hi('jsExceptions',        g:base0A, '', '', '')
call Base16hi('jsFuncCall',          g:base0D, '', '', '')
call Base16hi('jsFuncName',          g:base0D, '', '', '')
call Base16hi('jsFunction',          g:base0E, '', '', '')
call Base16hi('jsGlobalNodeObjects', g:base0A, '', '', '')
call Base16hi('jsGlobalObjects',     g:base0A, '', '', '')
call Base16hi('jsOperator',          g:base0D, '', '', '')
call Base16hi('jsRegexpString',      g:base0C, '', '', '')
call Base16hi('jsReturn',            g:base0E, '', '', '')
call Base16hi('jsStatement',         g:base0E, '', '', '')
call Base16hi('jsThis',              g:base08, '', '', '')

" LSP
call Base16hi('LspErrorText',            g:base08, g:base01, '',          '')
call Base16hi('LspWarningText',          g:base0A, g:base01, '',          '')
call Base16hi('LspInformationText',      g:base0D, g:base01, '',          '')
call Base16hi('LspHintText',             g:base0E, g:base01, '',          '')
call Base16hi('LspErrorHighlight',       '',       '',       'underline', g:base08)
call Base16hi('LspWarningHighlight',     '',       '',       'underline', g:base0A)
call Base16hi('LspInformationHighlight', '',       '',       'underline', g:base0D)
call Base16hi('LspHintHighlight',        '',       '',       'underline', g:base0E)

" Mail
call Base16hi('mailEmail',   g:base0D, '', '', '')
call Base16hi('mailQuoted1', g:base0A, '', '', '')
call Base16hi('mailQuoted2', g:base0B, '', '', '')
call Base16hi('mailQuoted3', g:base0E, '', '', '')
call Base16hi('mailQuoted4', g:base0C, '', '', '')
call Base16hi('mailQuoted5', g:base0D, '', '', '')
call Base16hi('mailQuoted6', g:base0A, '', '', '')
call Base16hi('mailURL',     g:base0D, '', '', '')

" Markdown
call Base16hi('markdownCode',             g:base0B, '',       '', '')
call Base16hi('markdownCodeBlock',        g:base0B, '',       '', '')
call Base16hi('markdownError',            g:base05, g:base00, '', '')
call Base16hi('markdownHeadingDelimiter', g:base0D, '',       '', '')

" NERDTree
call Base16hi('NERDTreeDirSlash', g:base0D, '', '', '')
call Base16hi('NERDTreeExecFile', g:base05, '', '', '')

" PHP
call Base16hi('phpComparison',     g:base05, '', '', '')
call Base16hi('phpMemberSelector', g:base05, '', '', '')
call Base16hi('phpMethodsVar',     g:base0C, '', '', '')
call Base16hi('phpParent',         g:base05, '', '', '')

" Python
call Base16hi('pythonInclude',   g:base0E, '', '', '')
call Base16hi('pythonOperator',  g:base0E, '', '', '')
call Base16hi('pythonRepeat',    g:base0E, '', '', '')
call Base16hi('pythonStatement', g:base0E, '', '', '')

" Ruby
call Base16hi('rubyAttribute',              g:base0D, '', '', '')
call Base16hi('rubyConstant',               g:base0A, '', '', '')
call Base16hi('rubyInterpolationDelimiter', g:base0F, '', '', '')
call Base16hi('rubyRegexp',                 g:base0C, '', '', '')
call Base16hi('rubyStringDelimiter',        g:base0B, '', '', '')
call Base16hi('rubySymbol',                 g:base0B, '', '', '')

" SASS
call Base16hi('sassClassChar', g:base09, '', '', '')
call Base16hi('sassInclude',   g:base0E, '', '', '')
call Base16hi('sassMixinName', g:base0D, '', '', '')
call Base16hi('sassMixing',    g:base0E, '', '', '')
call Base16hi('sassidChar',    g:base08, '', '', '')

" Signify
call Base16hi('SignifySignAdd',    g:base0B, g:base01, '', '')
call Base16hi('SignifySignChange', g:base0D, g:base01, '', '')
call Base16hi('SignifySignDelete', g:base08, g:base01, '', '')

" Spelling
call Base16hi('SpellBad',   '', '', 'undercurl', g:base08)
call Base16hi('SpellCap',   '', '', 'undercurl', g:base0D)
call Base16hi('SpellLocal', '', '', 'undercurl', g:base0C)
call Base16hi('SpellRare',  '', '', 'undercurl', g:base0E)

" Startify
call Base16hi('StartifyBracket', g:base03, '', '', '')
call Base16hi('StartifyFile',    g:base07, '', '', '')
call Base16hi('StartifyFooter',  g:base03, '', '', '')
call Base16hi('StartifyHeader',  g:base0B, '', '', '')
call Base16hi('StartifyNumber',  g:base09, '', '', '')
call Base16hi('StartifyPath',    g:base03, '', '', '')
call Base16hi('StartifySection', g:base0E, '', '', '')
call Base16hi('StartifySelect',  g:base0C, '', '', '')
call Base16hi('StartifySlash',   g:base03, '', '', '')
call Base16hi('StartifySpecial', g:base03, '', '', '')
