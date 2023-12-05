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
     if   ." Correct" 2drop
     else over <
          if   ." Too Low"
          else ." Too High"
          then
     then ;
\ 50  ok.
\ 49 guess Too Low ok.
\ .s [1] 50  ok.
\ 34 guess Too Low ok.
\ 60 guess Too High ok.
\ 55 guess Too High ok.
\ 50 guess Correct ok

\ 8.
: SPELLER ( n -- )
     dup abs 4 >
     if   ." Out of Range"
     else dup 0<
          if   ." Negative " abs
          then dup 0=
               if   ." Zero"
               else dup 1 =
                    if   ." One"
                    else dup 2 =
                         if   ." Two"
                         else dup 3 =
                              if ." Three"
                              else ." Four"
                              then
                         then
                    then
               then
     then drop ;
\ 9 speller Out of Range ok
\ -4 speller Negative Four ok
\ 2 speller Two ok
\ 0 speller Zero ok

\ 9.
: TRAP   ( ans lo hi -- ans or _ )
     3dup -rot over = -rot = and
     if   ." You Got It" 3drop
     else 3dup swap 1 + swap within
          if   ." Between"
          else ." Not Between"
          then 2drop
     then ;
\ 451  ok.
\ 0 500 trap Between ok.
\ 300 500 trap Between ok.
\ .s [1] 451  ok.
\ 450 500  ok...
\ . 500  ok..
\ . 450  ok.
\ 450 500 trap Between ok.
\ 451 500 trap Not Between ok.
\ 451 451 trap You Got It ok


























