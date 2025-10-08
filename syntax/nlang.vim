if exists("b:current_syntax")
  finish
endif

let s:cpo_save = &cpo
set cpo&vim

let s:ft = matchstr(&ft, '^\%([^.]\)\+')

syn keyword nStatement   goto break return continue cast
syn keyword nLabel       case default
syn keyword nConditional if else switch
syn keyword nRepeat      while for do

syn match nSpecial display contained "\\\%(x\x\+\|\o\{1,3}\|.\|$\)"

syn region nString start=+\%(L\|U\|u8\)\="+ skip=+\\\\\|\\"+ end=+"+ contains=nSpecial extend

syn match nChar "L\='[^\\]'"

syn keyword nType void uchar ushort uint ulong char short int long float double bool

hi def link nChar        Character
hi def link nConditional Conditional
hi def link nStatement   Statement
hi def link nType        Type

let b:current_syntax = "nlang"

unlet s:ft

let &cpo = s:cpo_save
unlet s:cpo_save
