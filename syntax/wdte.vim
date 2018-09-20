" wdte.vim: Vim syntax file for WDTE
" Heavily based on fatih/vim-go's syntax/gomod.vim.

if exists("b:current_syntax")
	finish
endif

syntax case match

syntax keyword wdteMemo memo
syntax keyword wdteLet let
syntax keyword wdteImport import

highlight default link wdteMemo Keyword
highlight default link wdteLet Keyword
highlight default link wdteImport Keyword

syntax region wdteComment start="#" end="$" contains=@Spell
highlight default link wdteComment Comment

syntax region wdteString start=+"+ skip=+\\\\\|\\"+ end=+"+
syntax region wdteString start=+'+ skip=+\\\\\|\\'+ end=+'+
highlight default link wdteString String

syntax region wdteSwitch start=+{+ end=+}+ transparent
syntax region wdteArray start=+\[+ end=+\]+ transparent
syntax region wdteCompound start=+(+ end=+)+ transparent
highlight default link wdteSwitch Operator
highlight default link wdteArray Operator
highlight default link wdteCompound Operator

syntax match wdteSub "\."
syntax match wdteChain "->"
syntax match wdteAssign "=>"
syntax match wdteExprEnd ";"
syntax match wdteSlot ":"
syntax match wdteIgnoredChain "--"
syntax match wdteLambda "(@"
highlight default link wdteSub Operator
highlight default link wdteChain Operator
highlight default link wdteAssign Operator
highlight default link wdteExprEnd Operator
highlight default link wdteSlot Operator
highlight default link wdteIgnoredChain Operator
highlight default link wdteLambda Operator

let b:current_syntax = "wdte"
