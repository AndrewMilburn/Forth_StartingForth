cls
empty
cr

\ : GREET   ." Hello, I speak Forth"
\ ;  ok
\   ok
\ greet Hello, I speak Forth ok
\   ok
\ : GREET   ." Hi There" ;
\   ^^^^^
\ Warning(-4100): GREET is redefined  ok
\   ok
\ greet Hi There ok
\   ok
\ forget greet  ok
\ greet Hello, I speak Forth ok

: sddf ." Yep" ;
\ ok
\ sddf Yep ok
\ forget greet  ok
\ sddf
\ ^^^^
\ Error(-13): SDDF is undefined

\ 180 list
\     ^^^^
\ Error(-13): LIST is undefined

\   ok
\ view sddf  loaded from: W:\WIN32FORTH\PROJEX\FORTH_STARTI
\ NGFORTH\CHAPTERS\CH3.F at line: 19  ok
\   ok
\ see sddf
\ : SDDF          ." Yep" ;  ok




































