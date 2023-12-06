( Chapter 6 )
page
empty
cr
quit

: TEST
     10 0
     do   cr ." Hello "
     loop ;

: DECADE
     10 0
     do   i .
     loop ;

: SAMPLE
     -243 -250
     do   i .
     loop ;

: MULTIPLICATIONS   ( n -- )
     cr 11 1
     do   dup i * .
     loop drop ;

: R%   ( n -- n )
     10 */ 5 + 10 / ;

: COMPOUND   ( amt int -- )
     swap 21 1
     do   ." Year " i . 3 spaces 2dup r% + dup ." Balance " . cr
     loop 2drop ;

: M_RECTANGLE
     256 0
     do   i 16 mod 0=
          if cr
          then ." *"
     loop ;

: POEM
     cr 11 1
     do   i . ." Little " i 3 mod 0=
          if   ." Indians " cr
          then
     loop ." Indian boys" ;

: TABLE
     cr 11 1
     do   i multiplications
     loop ;

: TABLE2
     cr 11 1
     do   11 1
          do   i j * 5 u.r
          loop cr
     loop ;

: PENTAJUMPS
     50 0
     do   i . 5
     +loop ;

: FALLING
     -10 0
     do i . -1
     +loop ;

: INC-COUNT ( step limit start -- )
     do   i . dup
     +loop drop ;

: DOUBLING
     32767 1
     do   i . i
     +loop ;

: TEST2
     10 10
     do i . -1
     +loop ;

: DOUBLED
     6 1000 21 1
     do   cr ." Year " i 2 u.r 2dup r% + dup ."   Balance " .
          dup 2000 >
          if   cr cr ." More than doubled in "
               i . ." Years " leave
          then
     loop 2drop ;






















