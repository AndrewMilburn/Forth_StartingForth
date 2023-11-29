empty

\ 15 spaces
\ 42 emit
\ 15 spaces 42 emit 42 emit

: star   42 emit ;
\ star
\ cr
\ cr star cr star cr star

: margin   cr 30 spaces ;
\ margin star margin star margin star

: blip   margin star ;

: stars   0 do star loop ;
\ 5 stars

: bar   margin 5 stars ;
\ bar blip bar blip blip cr	\ Produces Capital F

: F   bar blip bar blip blip cr ;
\ f

: greet   ." Hello, I speak Forth good" ;
\ greet

: four-more   4 + ;
\ 3 four-more .
\ -10 four-more .

\ Stack is LIFO
\ 2 4 6 8 . . . .

\ Uh-Oh
\ 10 20 30 . . . .	\ 4 dots for only 3 numbers
\ Interesting - The Editor threw the error,
\ then highlighted the complete line in the IDE
\ causing the problem


