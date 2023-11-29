cls
empty
cr

\ 17 5 + .
\  22 ok

\ 7 8 * .
\ 56 ok

\ 7 4 - .
\ 3  ok

\ 10.00 2.25 + .
\ 225  ok..
\ .s [2] 1000 0  ok..

\ 21 4 / .
\ 5  ok

\ 10000 10 * .
\ 100000  ok

\ They've obviously enlarged integers...
\ From the W32F Manual
\ Each entry is held as a 32-bit, twos-complement integer.
\ In unsigned hexadecimal, the 32-bit values can run from  00000000 to
\ FFFFFFFF. In decimal they are -2147483648 to  2147483647.
\ Later we'll see Forth also supports 64-bit integers and
\ 64 bit floating point numbers. Stack values may be treated as signed
\ or unsigned.

\ 4 + (17 * 12)
\ 17 12 * 4 + .
\ 208  ok

\ 17 20 132 3 9 + + + + .
\ 181  ok

\ (3+9) * (4+6)
\ 3 9 + 4 6 + * .
\ 120  ok

\ : YARDS>IN   36 * ;
\ : FT>IN   12 * ;
\ 10 yards>in . 360  ok
\ 2 ft>in . 24  ok

: YARDS   36 * ;
: FEET   12 * ;
: INCHES   ;
\ 10 yards 2 feet + 9 inches + . 393  ok

: YARD   yards ;
: FOOT   feet ;
: INCH   ;
\ 1 yard 2 feet + 1 inch + . 61  ok

: 5#SUM   + + + + ;
\ 17 20 132 3 9 5#sum . 181  ok

: 2B1   ( c b a -- ab+c )
	* + ;

: 2B2   ( c a b -- result )
	4 * - 6 / + ;

: 2B3 ( a b -- result )
	8 * / ;

: 2B4 ( a b -- result )
	* 200 / ;

: 2B5 ( a a -- result )
	2 * 3 + * ;

: 2B6 ( c b a -- result )
\ -  ?????????

\ 22 4 / . 5  ok
\ p61
























