: Printables   127 32 do i emit space loop ;

: test
	dup 0<
	if negate -1
	else 0
	then >r
	s>d <# [char] $ hold # # [char] . hold # # # [char] . hold #S r> sign #>
	cr type ;

: demo
	s>d <#   # # [char] . hold # # # [char] , hold
	#s [char] £ hold #> type ;

: .ph#   s>d <# # # # # 45 hold #s #> type space ;


: Sextal   6 base ! ;
: :00   # sextal # decimal 58 hold ;
: Sec   s>d <# :00 :00 #s #> type space ;

