
syntax match userType "\<\S*\i\+\(_t\)\>"
syntax match userType "\(\H\)\@<=t_\i\+\ze"

"syn match    cCustomFunc     "\w\+\s*
"syn match    cCustomParen    "(" contains=cParen,cCppParen
"syn match    cCustomFunc     "\w\+\s*(" contains=cCustomParen








set conceallevel=2 concealcursor=nvic
syntax match NoIndentTabStart contained "/^\t\+" conceal cchar=⁔"🐯

hi Conceal ctermfg=34


" Highlight Class and Function names

"syn match    cCustomParen    "(" contains=cParen,cCppParen
"syn match    cCustomFunc     "\w\+\s*(" contains=cCustomParen
"syn match    cCustomScope    "::"
"syn match    cCustomClass    "\w\+\s*::" contains=cCustomScope
"
"hi def link cCustomFunc  Function
"hi def link cCustomClass Function
"hi def cCustomFunc  gui=bold guifg=yellowgreen
"hi def cCustomClass gui=reverse guifg=#00FF00

"wide space : =
"»
