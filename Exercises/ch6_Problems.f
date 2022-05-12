( Chapter 6 Exercises )

: Stars   ( n -- )
	0
	do 42 emit
	loop ;

: Box	( width height -- )
	0
	do cr dup stars
	loop cr drop ;

: \Stars ( height -- )
	0
	do cr i spaces 10 stars
	loop cr ;

: /Stars ( height -- )
	1 - 0 swap
	do cr i spaces 10 stars
	-1 +loop cr ;

: /stars2 ( height -- )
	begin cr dup spaces 10 stars 1- dup 0=
	until drop ;

: Starline ( number position  -- )
	cr spaces 0
	do ." *"
	loop ;

: TriangleUp ( lines -- lines )
	dup 0
	do  i 2 * 1+
		over i - starline
	loop ;

: TriangleDown ( lines -- lines )
	dup 1- 0 swap
	do  i 2 * 1+
		over i - starline
	-1 +loop ;

: Diamonds ( size number -- )
	0
	do triangleup triangledown
	loop ;

: ** ( base power -- exponential )
	over swap 1-
	if
		do over *
		loop swap drop
	else
;








