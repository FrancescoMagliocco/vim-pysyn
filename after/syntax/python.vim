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
syn keyword pythonBuiltInFunction       setLoggerClass getLoggerClass basicConfig


" NOTE: Currenlty I am going to include '.' for each method to distinguish these from the functions
" TODO: REWORD EVERYTHING SO IT MAKES SENSE


" getMessage was defined inside of class LogRecord
" usesTime was defined inside of class PercentStyle
" format was defiend inside of class PercentStyle          NOTE:  format is also a different color in the source on git
" formatException was defined inside of class Formatter
" formatMessage was defiend inside of class Formatter
"syn keyword pythonBuiltInMethod         .getMessage .usesTime .formatTime .formatException .formatMessage

" May want to add some type of regex at the end to match '(', but I've been having issues trying to accomplish this
" This is probablyu going to break...
syn match   pythonBuiltInMethod         /\.(get(Message|_name))(format)/

" formatStack was dfined inside of class Formatter
syn keyword pythonBuiltInMethod         .formatStack

" formatHeader was defiend inside of class BufferingFormatter
" formatFooter was defined inside of class BufferingFormatter
" filter was defined inside of class FIlter                 NOTE: filter as had a different color  in source on git
" addFilter was defined inside of class Filterer
" get_name was defined inside of class Handler
" set_name was defined inside of class Handler
" createLock was defined insidoe of class Handler
syn keyword pythonBuiltInMethod         .formatHeader .formatFooter .filter .addFilter .get_name .set_name .createLock

" acquire was deinfed i nside of class Handler
" release was defined insideo of class Handler
" setLevel was defined inside of class Handler
" emit was defineind insdie of class Handler
" handle was defineind inside of class Handler
" setFormatter wa s defined inisode of class Handler
" flush was defineind insdie of class Handler
" close was defineind inside of class Handler
syn keyword pythonBuiltInMethod         .acquire .release .setLevel .emit .handle .setFormatter .flush .close

" handleError was defined inside of class Handler
syn keyword pythonBuiltInMethod         .handleError

" append was defineind inside of class PlaceHolder
" getLogger was defineind inside of class Manager
" setLogRecordFactory was defined inside of class Manager
" debug was definend inside of class LOgger
" info was definedn insideo fo class Logger
" warning was defined inside of class Logger
" error was defined inside of class Logger
" exception was defined inside of class Logger
syn keyword pythonBuiltInMethod         .append .getLogger .setLogRecordFactory .debug .info .warning .error .exception

" critical was defined inside of claass Logger
syn keyword pythonBuiltInMethod         .critical

" log was sefined inside of class Logger
" findCaller was defined inside of class Logger
" makeRecord was defined inside of class Logger
" addHandler was defined inside of class Logger
" removeHandler was defined insidoe of class Logger
" callHandlers was defined inside of class Logger
syn keyword pythonBuiltInMethod         .log .findCaller .makeRecord .addHandler .removeHandler .callHandlers

" getEffectiveLevel was defined inside of class Logger
" isEnabeldFor was defined insidoe of class Logger
" getChild was definend inside of class Logger
" process was defined inside of class LoggerAdapter
" hasHandlers was defined inside of class LoggerAdapter
" manager was defined inside of class LoggerAdapter
" name was defineind inside of class LoggerAdapter
syn keyword pythonBuiltInMethod         .getEffectiveLevel .isEnabledFor .getChild .process .hasHandlers .manager .name


"syn match pythong\vstr\ze\([^)]*\)
"

hi link pythonFunction          function
hi link pythonType              type
hi link pythonEqual             symPunctEqual
hi link pythonBuiltInFunction   function
hi link pythonBuiltInMethod     method
hi link pythonParens            symParens
hi link pythonBraces            symBraces
hi link pythonBuiltInConstants  constant
hi link pythonBuiltInClass      class
