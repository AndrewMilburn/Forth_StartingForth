cls
empty
cr

\ 1.
\ DUP DUP ( a b -- a b b b )
\ 2DUP ( a b -- a b a b )

\ 2.
: EX2.2   ( a b c d -- d c b a )
	swap 2swap swap ;
\ 1 2 3 43 ex2.2 .s [4] 43 3 2 1  ok....

\ 3.
\ : 3DUP   ( 1 2 3 -- 1 2 3 1 2 3 )
\ 	dup 2over rot ;
\ 1 2 32 3dup .s [6] 1 2 32 1 2 32  ok......

\ 4.
: ex2.4   ( c a b -- result )
	over * swap dup * + + ;
(( 5 2 3 ex2.4 .s [1] 15  ok.
\ His Answer: over + * + Slightly shorter
\ is factorised first to a(a + b) + c ))

\ 5.
: ex2.5   ( a b -- result )
	2dup - rot rot + / ;
\ 4 -3 ex2.5 .s [1] 7  ok.

\ 6.
: CONVICTED-OF   0 ;
: ARSON   10 + ;
: HOMICIDE   20 + ;
: BOOKMAKING   2 + ;
: TAX-EVASION   5 + ;
: WILL-SERVE   . ."  Years" ;
\ convicted-of arson homicide tax-evasion  ok.
\ will-serve 35  Years ok

\ 7.
: EGG.CARTONS    ( e -- )
	12 /mod cr ." Number of Cartons needed = " . cr
	." There will be " . ." Eggs left over." ;
\ 17 egg.cartons
\ Number of Cartons needed = 1
\ There will be 5 Eggs left over. ok
