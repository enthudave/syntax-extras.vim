" 'function' keyword
highlight link jsFunction Define
" 'class' keyword
highlight link jsClassKeyword Define
" 'const, var and let' keywords
highlight link jsStorageClass Define

syntax clear jsArrowFunction
syntax match jsArrowFunction /=>/  skipwhite skipempty nextgroup=jsFuncBlock,jsCommentFunction
highlight link jsArrowFunction Function

highlight link jsFuncArgs Special
highlight link jsArrowFuncArgs Special

highlight link jsFuncCall Function
"shebang line
highlight link jsEnvComment Comment
