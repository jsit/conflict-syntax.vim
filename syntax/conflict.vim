" conflict.vim
" Language:	Vim 8.0 script
" Maintainer:	Jay Sitter <jay@diameterstudios.com>
" Last Change:	Apr 12, 2019
" URL:	https://github.com/jsit/conflict-syntax.vim

syn region conflict start="^<<<<<<<.*$" end="^>>>>>>>.*$" keepend contains=conflictHead,conflictCommon,conflictRemote

syn region conflictHead start="^<<<<<<<.*$" end="^|||||||\|=======$"me=e-7 keepend contains=conflictMarker
syn region conflictCommon start="^|||||||.*$" end="^=======$"me=e-7 keepend contains=conflictMarker
syn region conflictRemote start="^=======" end="^>>>>>>>.*$" keepend contains=conflictMarker

syn match conflictMarker "^\(<<<<<<<.*\||||||||.*\|>>>>>>>.*\|=======\)$" contained

hi link conflictHead   Constant
hi link conflictCommon Statement
hi link conflictRemote Identifier
hi link conflictMarker Comment

let b:current_syntax = "conflict"
