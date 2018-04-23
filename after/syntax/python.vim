syn keyword pythonStatement     return continue def
syn keyword pythonType          None bool int long float str tuple list dict
syn keyword pythonFunction      abs isinstance
syn match   pythonEqual         /=/
syn match   pythonParens        /[()]/
syn match   pythonBraces        /[\[\]]/
"syn match   pythonPlus          /+/

syn keyword pythonBuiltInConstants      CRITICAL FFATAL ERROR WARNING INFO DEBUG NOSET BASIC_FORMAT

syn keyword pythonBuiltInClass          LogRecord PercentStyle StrFormatStyle StringTemplateStyle Formatter
syn keyword pythonBuiltInClass          BufferingFormatter Filter Filterer Handler StreamHandler FilterHandler
syn keyword pythonBuiltInClass          PlaceHolder Manager Logger RootLogger LoggerAdapter List Tuple Dict

syn keyword pythonBuiltInFunction       getLevelName addLevelName setLogRecordFFactory getLogRecordFactory makeLogRecord

" setLoggerClass was also defiend insidoe of class Manager
" NOTE: getLogger, critical, error etc..  Are all also defined not in any class, does that make them a function?...
"   If so, distinguish with matching .error etc for the methods


syn match   pythonBuiltInFunction       /\b\(set\|get\)\LoggerClss\ze(/
syn match   pythonBuiltInFunction       /\bbasicConfig\ze(/

" TODO: REWORD EVERYTHING SO IT MAKES SENSE


" We are just going to include '.' in the match so we can differentiate methods from functions, then we will colors all
" the '.' at the end appropriately.
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

hi link pythonFunction          function
hi link pythonType              type
hi link pythonEqual             symPunctEqual
hi link pythonBuiltInFunction   function
hi link pythonBuiltInMethod     method
hi link pythonParens            symParens
hi link pythonBraces            symBraces
hi link pythonBuiltInConstants  constant
hi link pythonBuiltInClass      class
