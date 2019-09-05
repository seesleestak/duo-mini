" Project: Duo Mini Vim
" Repository:
" License: MIT

hi clear
if exists("syntax_on")
  syntax reset
endif

let g:colors_name = "duo-mini"
set background=dark

let s:bg        = { "gui": "#252A33", "cterm": "0" }  " Background color
let s:fg        = { "gui": "#D8DEE9", "cterm": "7" }  " Normal text color
let s:secondary = { "gui": "#88C0D0", "cterm": "2" }  " Accent color
let s:subtle    = { "gui": "#616E88", "cterm": "8" }  " Comment color
let s:selection = { "gui": "#434C5E", "cterm": "0" }
let s:red       = { "gui": "#BF616A", "cterm": "1" }
let s:yellow    = { "gui": "#EBCB8B", "cterm": "3" }
let s:green     = { "gui": "#A3BE8C", "cterm": "2" } 

let s:norm = s:fg

let s:bold = "bold,"
let s:italic = "italic,"
let s:underline = "underline,"

" https://github.com/noahfrederick/vim-hemisu/
function! s:h(group, style)
  execute "highlight" a:group
    \ "guifg="   (has_key(a:style, "fg")    ? a:style.fg.gui   : "NONE")
    \ "guibg="   (has_key(a:style, "bg")    ? a:style.bg.gui   : "NONE")
    \ "guisp="   (has_key(a:style, "sp")    ? a:style.sp.gui   : "NONE")
    \ "gui="     (has_key(a:style, "gui")   ? a:style.gui      : "NONE")
    \ "ctermfg=" (has_key(a:style, "fg")    ? a:style.fg.cterm : "NONE")
    \ "ctermbg=" (has_key(a:style, "bg")    ? a:style.bg.cterm : "NONE")
    \ "cterm="   (has_key(a:style, "cterm") ? a:style.cterm    : "NONE")
endfunction

call s:h("Normal",        {"bg": s:bg, "fg": s:fg})
call s:h("Cursor",        {"bg": s:green, "fg": s:fg})
call s:h("Comment",       {"fg": s:subtle, "cterm": s:italic})
call s:h("Function",      {"fg": s:fg, "cterm": s:bold})

call s:h("Constant",      {"bg": s:bg, "fg": s:secondary})
hi! link Character        Constant
hi! link Number           Constant
hi! link Boolean          Constant
hi! link Float            Constant
hi! link String           Constant

call s:h("Statement",     {"bg": s:bg, "fg": s:norm, "cterm": s:bold})
hi! link Conditonal       Statement
hi! link Repeat           Statement
hi! link Label            Statement
hi! link Operator         Noise
hi! link Keyword          Statement
hi! link Exception        Statement
hi! link PreProc          Normal
hi! link Include          Statement
hi! link Define           PreProc
hi! link Macro            PreProc
hi! link PreCondit        PreProc
hi! link Type             Normal
hi! link StorageClass     Type
hi! link Structure        Type
hi! link Typedef          Type
hi! link Special          StatusLine
hi! link SpecialChar      Special
hi! link Tag              Special
hi! link Delimiter        Special
hi! link SpecialComment   Special
hi! link Debug            Special
hi! link Conceal          NonText

call s:h("Underlined",    {"fg": s:norm, "gui": "underline", "cterm": s:underline})
call s:h("Ignore",        {"fg": s:bg})
call s:h("Error",         {"fg": s:red, "bg": s:bg, "cterm": s:bold})
call s:h("Todo",          {"fg": s:yellow, "gui": s:bold, "cterm": s:bold})
call s:h("SpecialKey",    {"fg": s:subtle})
call s:h("NonText",       {"fg": s:subtle})
call s:h("Directory",     {"fg": s:secondary})
call s:h("ErrorMsg",      {"fg": s:red})
call s:h("IncSearch",     {"bg": s:subtle, "fg": s:bg})
call s:h("Search",        {"bg": s:subtle, "fg": s:bg})
call s:h("MoreMsg",       {"fg": s:subtle, "cterm": s:bold, "gui": s:bold})
hi! link ModeMsg MoreMsg
call s:h("LineNr",        {"fg": s:subtle})
call s:h("CursorLineNr",  {"fg": s:fg, "bg": s:bg})
call s:h("Question",      {"fg": s:red})
call s:h("VertSplit",     {"bg": s:bg, "fg": s:subtle})
call s:h("Title",         {"fg": s:fg})
call s:h("Visual",        {"bg": s:selection})
call s:h("VisualNOS",     {"bg": s:subtle})
call s:h("WarningMsg",    {"fg": s:yellow})
call s:h("WildMenu",      {"fg": s:fg, "bg": s:bg})
call s:h("Folded",        {"fg": s:subtle})
call s:h("FoldColumn",    {"fg": s:subtle})
call s:h("DiffAdd",       {"fg": s:green})
call s:h("DiffDelete",    {"fg": s:red})
call s:h("DiffChange",    {"fg": s:yellow})
call s:h("DiffText",      {"fg": s:green})
call s:h("SignColumn",    {"fg": s:green})

if has("gui_running")
  call s:h("SpellBad",    {"gui": s:underline, "sp": s:red})
  call s:h("SpellCap",    {"gui": s:underline, "sp": s:green})
  call s:h("SpellRare",   {"gui": s:underline, "sp": s:yellow})
  call s:h("SpellLocal",  {"gui": s:underline, "sp": s:green})
else
  call s:h("SpellBad",    {"cterm": s:underline, "fg": s:red})
  call s:h("SpellCap",    {"cterm": s:underline, "fg": s:green})
  call s:h("SpellRare",   {"cterm": s:underline, "fg": s:yellow})
  call s:h("SpellLocal",  {"cterm": s:underline, "fg": s:green})
endif

""" Help
hi link helpHyperTextEntry Title
hi link helpHyperTextJump  String

""" StatusLine
call s:h("StatusLine",        {"bg": s:bg, "fg": s:fg})
call s:h("StatusLineNC",      {"cterm": s:underline, "bg": s:bg, "fg": s:fg})
call s:h("StatusLineOk",      {"gui": s:underline, "bg": s:bg, "fg": s:green})
call s:h("StatusLineError",   {"gui": s:underline, "bg": s:bg, "fg": s:red})
call s:h("StatusLineWarning", {"gui": s:underline, "bg": s:bg, "fg": s:yellow})

call s:h("Pmenu",         {"fg": s:norm, "bg": s:bg})
call s:h("PmenuSel",      {"fg": s:bg, "bg": s:secondary, "gui": s:bold})
" call s:h("PmenuSbar",     {"fg": s:norm, "bg": s:bg_subtle})
" call s:h("PmenuThumb",    {"fg": s:norm, "bg": s:bg_subtle})
" call s:h("TabLine",       {"fg": s:norm_subtle, "bg": s:bg})
" call s:h("TabLineSel",    {"fg": s:norm, "bg": s:bg, "gui": "bold", "cterm": "bold"})
" call s:h("TabLineFill",   {"fg": s:norm_subtle, "bg": s:bg})
" call s:h("CursorColumn",  {"bg": s:bg_very_subtle})
" call s:h("CursorLine",    {"bg": s:cursor_line})
" call s:h("ColorColumn",   {"bg": s:bg_subtle})
