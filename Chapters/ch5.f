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

\ p134
\ 225 32 100 */ . 72  ok

: %   ( n -- n )
     100 */ ;
\ 225 32 % . 72  ok

: R%   ( n -- n )
     10 */ 5 + 10 / ;
\ 227 32 R% . 73  ok

\ 171 2 3 */ . 114  ok

: AREA   ( rad -- area )
     dup * 31416 10000 */ ;
\ 10 area . 314  ok

: AREA2   ( rad -- area )
     dup * 355 113 */ ;
\ 10 area2 . 314  ok




















