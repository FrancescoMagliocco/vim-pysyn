syn keyword pythonStatement     return continue def
syn keyword pythonFunction      abs isinstance
"syn match   pythonPlus          /+/

" Types should be highlighted before other shit, that way parts of over highlights aren't highlighted over.  (Not sure
"   if that's even a thing that happens..)
syn keyword pythonType          None bool int long float str tuple list dict

syn keyword pythonBuiltInConstants      CRITICAL FFATAL ERROR WARNING INFO DEBUG NOSET BASIC_FORMAT


" Classes should be highlighted first so they don't interfere by matching inside of functions.

syn match   pythonBuiltInClass          /Filter\(er\)\?/

" I've got no idea if this will work or not...
syn match   pythonBuiltInClass          /Root\?\Logger{1}Adapter\?/
syn match   pythonBuiltInClass          /\(Stream\|Filter\)\?Handler/
syn match   pythonBuiltInClass          /LogRecord\|PlaceHolder\|Manager/
syn match   pythonBuiltInClass          /\(Buffering\)\?Formatter/
syn match   pythonBuiltInClass          /\(Percent\|StrFormat\|StringTemplate\)Style/

" Lets have these set to a different highlight group, just for customizability.
syn match   pythonBuiltInCollectionTypeClass          /\<\(Dict\|List\|Tuple\)\ze\[/

" NOTE: getLogger, critical, error etc..  Are all also defined not in any class, does that make them a function?...
"   If so, distinguish with matching .error etc for the methods

syn match   pythonBuiltInFunction       /\<make\(LogRecord\)\ze(/

" May think this over because it seems like something could go terribly wrong..
syn match   pythonBuiltInFucntion       /\<\(get\|add\)\(LevelName\)\ze(/
syn match   pythonBuiltInFunction       /\<\(set\|get\)\(LoggerClass\|LogRecordFactory\)\ze(/
syn match   pythonBuiltInFunction       /\<basicConfig\ze(/

" TODO: Want to somehow incorporate \zs after \. so that way the '.' is not highlighted.  Seems inefficient to include
"   the '.', highlight then just highlight over it again..
" We are just going to include '.' in the match so we can differentiate methods from functions, then we will colors all
"   the '.' at the end appropriately.
syn match   pythonBuiltInMethod         /\.get\(Message\|_name\|EffectiveLevel\|Child\|Logger\)\ze(/
syn match   pythonBuiltInMethod         /\.set\(_name\|Level\|Formatter\|LogRecordFactory\)\ze(/
syn match   pythonBuiltInMethod         /\.format\(Time\|Exception\|Message\|Stack\|Header\|Footer\)\?\ze(/
syn match   pythonBuiltInMethod         /\.add\(Filter\|Handler\)\ze(/
syn match   pythonBuiltInMethod         /\.\(filter\|acquire\|release\|emit\|flush\|close\|append\|error\)\ze(/
syn match   pythonBuiltInMethod         /\.\(usesTime\|createLock\|debug\|info\|warning\|exception\|critical\)\ze(/
syn match   pythonBuiltInMethod         /\.handle\(Error\)\?\ze(/
syn match   pythonBuiltInMethod         /\.log\ze(/
syn match   pythonBuiltInMethod         /\.\(process\|manager\|name\)\ze(/
syn match   pythonBuiltInMethod         /\.find\(Caller\)\ze(/
syn match   pythonBuiltInMethod         /\.make\(Record\)\ze(/
syn match   pythonBuiltInMethod         /\.is\(EnabledFor\)\ze(/
syn match   pythonBuiltInMethod         /\.has\(Handlers\)\ze(/
syn match   pythonBuiltInMethod         /\.remove\(Handler\)\ze(/
syn match   pythonBuiltInMethod         /\.call\(Handlers\)\ze(/
syn match   pythonBuiltInMethod         /\.basicConfig\ze(/

" These should be highlighted after everything else...  Actually this could be stupid..
syn match   pythonEqual         /=/
syn match   pythonParens        /[()]/
syn match   pythonBraces        /[\[\]]/

syn match   pythonPlus          /+/

hi link pythonBuiltInConstant           constant
hi link pythonBuiltInClass              class
hi link pythonBuiltInCollectionClass    pythonBuiltInClass
hi link pythonFunction                  function
hi link pythonType                      type
hi link pythonEqual                     symPunctEqual
hi link pythonBuiltInFunction           function
hi link pythonBuiltInMethod             method
hi link pythonParens                    symParens
hi link pythonBraces                    symBraces
hi link pythonPlus                      symPlusGreater

" May change this to some yellow
hi link pythonQuotes                    special
