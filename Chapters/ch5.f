cls
empty
cr

: DIFF  ( n1 n2 -- |n1-n2| )
     - abs ;
\ 21 3 diff . 18  ok
\ 3 21 diff . 18  ok

: COMMISION   ( n1 -- n2 )
     10 / 50 min ;
\ 600 commision . 50  ok
\ 450 commision . 45  ok
\ 50 commision . 5  ok

\ 2 3 1 >r swap r> .s [3] 3 2 1  ok...

: QUADRATIC   ( a b c x -- n )
     >r swap rot r@ * + r> * + ;
\ 2 7 9 3 quadratic . 48  ok

\ p131


















