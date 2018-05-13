syn match   javaFuncCall   /\<[a-zA-Z_$][0-9a-zA-Z_$]*\ze(/
highlight link javaFuncCall Function

syn match   javaExceptionIdentifier    '[a-zA-Z_][a-zA-Z0-9_]*' display contained
highlight link javaExceptionIdentifier Operator

syn keyword javaMethodDecl	synchronized throws nextgroup=javaExceptionIdentifier skipwhite
highlight link javaMethodDecl Keyword

syn match javaOperator display '[!%^&|+=<>?-]'
"syn match javaOperator display '//\@!'
syn match javaOperator display '/\@<!\*/\@!'
syn match javaOperator display ' *->'

syn match Brackets display '[(){}\[\]]'
highlight link Brackets Normal


syn match ClassName display '\<\([A-Z][a-z0-9]*\)\+\>'
syn match ClassName display '\.\@<=\*'
highlight link ClassName Type

syn match Constructor display '\(\(public\|protected\|private\)\s\+\)\@<=\([A-Z][a-z0-9]*\)\+\( *(\)\@='
highlight link Constructor Function

syn match Final '\<[A-Z][A-Z0-9]\+\%(_[A-Z0-9]\+\)*\>'
highlight link Final Special

syn match javaAnnotation "@\([_$a-zA-Z][_$a-zA-Z0-9]*\.\)*[_$a-zA-Z][_$a-zA-Z0-9]*\>"

"highlight link javaIdentifier Special
highlight link javaStorageClass Keyword
highlight link javaScopeDecl Keyword
