( Chapter 6 Exercises ) page empty cr
\ : CLEAR_STACK
\       depth . ;
\ clear_stack


needs "W:\Win32Forth\Projex\Forth_StartingForth\Chapters\ch6.f"

: STARS     ( n -- )
      0
      do    42 emit
      loop  ;

: BOX       ( width height -- )
      0
      do    cr dup stars
      loop  drop ;

: \STARS    ( height -- )
      0
      do    cr i spaces 10 stars
      loop  ;

: /STARS    ( height -- )
      1 swap
      do    cr i 1- spaces 10 stars -1
      +loop ;

: /STARS2   ( height -- )
      begin cr dup 1- spaces 10 stars 1- dup 0=
      until drop ;

: LINE      ( spaces stars -- )
      cr swap spaces stars ;

: TRIANGLE_UP  ( lines -- )
      dup 1+ 1
      do    cr dup i - spaces i 2* 1- stars
      loop  drop ;

: TRIANGLE_DOWN   ( lines -- )
      dup 1 swap
      do    cr dup i - spaces i 2* 1- stars -1
      +loop drop ;

: DIAMOND   ( n -- )
      0
      do    10 triangle_up 10 triangle_down
      loop ;

\ : DOUBLED
\      6 1000 21 1
\      do   cr ." Year " i 2 u.r 2dup r% + dup ."   Balance " .
\           dup 2000 >
\           if   cr cr ." More than doubled in "
\                i . ." Years " leave
\           then
\      loop 2drop ;

\ : R%   ( n -- n )
\      10 */ 5 + 10 / ;

: DOUBLED_EX      ( start interest -- )
      over 2* -rot  15 1
      do    cr ." Year " i 2 u.r 2dup r% rot + dup ."   Balance " .
            rot 2dup >
            if   cr cr ." More than doubled in "
                  i . ." Years " leave
            then -rot swap
      loop  3drop ;

: **        ( n1 n2 -- n1^n2)
      over swap 1- ?dup
      if    1+ 1
            do    over *
            loop swap drop
      else drop
      then ;































































