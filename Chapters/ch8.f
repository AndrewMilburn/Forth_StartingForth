page
empty
cr

VARIABLE DATE VARIABLE MONTH VARIABLE YEAR
: !DATE     ( y m d -- )
      year ! month ! date ! ;

: DATE.     ( -- )
      date ? ." / " month ? ." / " year ? ;

variable EGGS
: RESET     0 eggs ! ;

1 eggs +!

: ADD_EGG   1 eggs +! ;

220 CONSTANT LIMIT

: ?TOO.HOT        ( n -- )
      limit >
      if    ." DANGER - REDUCE HEAT"
      then ;

HEX
3E27 CONSTANT SHUTTER
DECIMAL

: OPEN      ( n -- )
      1 swap ! ." Shutter Open" ;
: CLOSE     ( n -- )
      0 swap ! ." Shutter Closed" ;

: PHOTOGRAPH
      cr shutter open cr ." Click" cr shutter close ;





































