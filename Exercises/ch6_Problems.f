( Chapter 6 Exercises ) page empty cr

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

: TRIANGLE_UP  ( lines -- lines)
      dup 1+ 1
      do    cr dup i - spaces i 2* 1- stars
      loop  drop ;

: TRIANGLE_DOWN   ( lines -- lines)
      dup 1 swap
      do    cr dup i - spaces i 2* 1- stars -1
      +loop drop ;

: DIAMOND   ( n -- )
      0
      do    10 triangle_up 10 triangle_down
      loop ;


































