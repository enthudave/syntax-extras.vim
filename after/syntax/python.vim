syn keyword pythonDefine      def class nextgroup=pythonFunction skipwhite

syn match   pythonFunction    '\%([^[:cntrl:][:space:][:punct:][:digit:]]\|_\)\%([^[:cntrl:][:punct:][:space:]]\|_\)*' display contained nextgroup=pythonParamDef
syn region  pythonParamDef    start="(" end="):.*\n" contained contains=pythonParameters transparent keepend
syn match   pythonParameters  "[^,:]*" contained contains=pythonParam,pythonParens skipwhite
syn match   pythonParam       "=[^,]*" contained contains=pythonOperator,pythonBuiltin,pythonConstant,pythonStatement,pythonNumber,pythonString skipwhite
syn match   pythonParens      "[(|)]" contained skipwhite
syn match   pythonFuncCall    /[a-zA-Z_$][a-zA-Z0-9_$]*\ze(/

hi def link pythonDefine Define
hi def link pythonFuncCall Function
hi def link pythonFunction Function
hi def link pythonParameters Special
