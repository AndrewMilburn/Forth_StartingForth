( Chapter 6 )

: Test	10 0 do cr ." Hello " loop ;

: Decade   10 0 do i . loop ;

: Multiplications   cr 11 1 do dup i * . loop drop ;

: R%   ( n1 n2 -- n3; n3 = n1% of n2)
	10 */ 5 + 10 / ;

: Compound	( amt int -- int% of amt over 20 years compound )
	swap 21 1
	do ." Year " i . 3 spaces
		2dup r% + dup ." Balance " . cr
	loop 2drop ;

: Oblong page 256 0
	do i 16 mod 0=
		if cr
		then ." *"
	loop quit ;

: Poem
	cr 11 1
	do i . ." Little " i 3 mod 0=
		if ." Indians " cr
		then
	loop ." Indian Boys. " ;

: Table cr 11 1 do i multiplications loop ;

: Tables cr 11 1
	do 11 1
		do i j * 5 u.r
		loop cr
	loop ;

: Pentajumps   50 0
	do i . 5
	+loop ;

: Falling   -10 0
	do i . -1
	+loop ;

: Inc-Count   ( inc limit start -- )
	do i . dup
	+loop drop ;

: doubling   32767 1
	do i . i
	+loop ;

: Doubleit \ amt int -- ; prints annual amount at
		   \ int % interest for 20 years, or initial amount
		   \ doubled
	swap 21 1
	do cr ." Year " i 2 u.r 2dup r% + dup
		  ."   Balance " 5 u.r dup 2000 >
		if cr cr ." More than doubled in " i . ." Years "
		leave
		then
	loop 2drop ;

: Doubleit2 \ ( amt int --) ; prints annual amount at
 		   \ int% compound interest for 20 years or
		   \  stops sooner if amount doubled
	over 21 1
	do cr ." Year " i 2 u.r 2dup r% + dup
		  ."   Balance " 5 u.r dup 3 pick 2 * >
 		if cr cr ." More than doubled in " i . ." Years "
	leave
		then
 	loop  3drop ;
