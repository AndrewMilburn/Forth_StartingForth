cls
empty
cr

\ 1.
\ 0= not
\ 1 -> -1
\ 0 -> 0
\ 200 -> -1
\ Although he probably calls true 1 in the answers

\ 3.
: CARD   ( n -- )
     17 > if   ." Alcohol Permitted"    else ." Under-Age sonny" then ;
\ 17 card Under-Age sonny ok
\ 18 card Alcohol Permitted ok

\ 4.
: SIGN.TEST   ( n -- )
     ?dup
     if   0<
          if   ." Negative"
          else ." Positive"
          then
     else ." Zero"
     then ;
\ 12 sign.test Positive ok
\ -2132 sign.test Negative ok
\ 0 sign.test Zero ok

\ 5.
: star   42 emit ;
: stars   0 do star loop ;

: ?stars   ( n -- )
     ?dup
     if   stars
     then ;
\ 6 ?stars ****** ok
\ 0 ?stars  ok

\ 6.
: MY_WITHIN   ( n lo hi -- Flag )
     rot rot over <= rot rot > and ;
\ 2 1 3 my_within . -1  ok
\ 1 1 3 my_within . -1  ok
\ 0 1 3 my_within . 0  ok
\ 3 1 3 my_within . 0  ok

\ 7.
: GUESS   ( ans guess -- ans or - )
     2dup =
     if   ." Correct" drop
     else <
          if   ." Less than"
          else ." Too Much"
          then
     then ;





















