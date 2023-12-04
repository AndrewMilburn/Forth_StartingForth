cls
empty
cr

: ?FULL
     12 =
     if   ." It's Full "
     then ;
\ 11 ?full  ok
\ 12 ?full It's Full  ok

: ?TOO-HOT   ( temp -- )
     220 >
     if   ." Danger Danger, Hi Temperature"
     then ;
\ 230 ?too-hot Danger Danger, Hi Temperature ok
\ 130 ?too-hot  ok

: ?DAY   ( day -- )
     32 <
     if   ." Looks OK "
     else ." Sus "
     then ;
\ 17 ?day Looks OK  ok
\ 43 ?day Sus  ok

: /CHECK   ( num denom --)
     dup 0=
     if   ." Invalid" drop
     else /
     then ;
\ 12 0 /check Invalid ok.
\ 12 6 /check  ok..
\ .s [2] 12 2  ok..
\ Which doesn't seem right stack-wise, but he's happy enough with it

: EGG-SIZE   ( weight -- )
     dup 18 <
     if   ." Reject"
     else dup 21 <
          if   ." Small"
          else dup 24 <
               if   ." Medium"
               else dup 27 <
                    if   ." Large"
                    else dup 30 <
                         if   ." Extra Large"
                         else ." Error"
                         then
                    then
               then
          then
     then drop ;
\ 23 egg-size Medium ok..
\ 29 egg-size Extra Large ok..
\ 40 egg-size Error ok..

\ p113
\ 5 4 > . -1  ok
\ 5 4 < . 0  ok

\ 5 3 > not . 0  ok
\ 5 3 < not . -1  ok

: TEST   if    ." Non-"  then ." Zero" ;
\ 1 test Non-Zero ok
\ 0 test Zero ok
\ 422 test Non-Zero ok
\ -312 test Non-Zero ok

: /CHECK2 ( num denom -- )
     dup
     if   /
     else ." Invalid " drop
     then ;
\ 112 0 /check Invalid ok.
\ 112 2 /check  ok..
\ .s [2] 112 56  ok..

\ 10 mod 0= gives divisible by 10'
\ 10 mod if will flag on 1's digit

\ - can also test whether two numbers are (not)equal

\ p116

: VEGETABLE   ( n -- FLAG ) ( True if n -ve or divisible by 10 )
     dup 0< swap 10 mod 0= +
     if   ." Artichoke (TRUE)
     else ." Melon (FALSE)
     then ;
\ 25 vegetable Melon (FALSE) ok
\ 40 vegetable Artichoke (TRUE) ok
\ -25 vegetable Artichoke (TRUE) ok
\ -30 vegetable Artichoke (TRUE) ok

: ?DAY2   ( day -- )
     dup 1 < swap 31 > +
     if   ." Sus "
     else ." OK "
     then ;
\ 0 ?day2 Sus  ok..
\ 32 ?day2 Sus  ok..
\ 31 ?day2 OK  ok..
\ Notice the logic is opposite of the original - now we fail positively

: BOXTEST   ( length width height -- )
     6 > rot 22 > rot 19 > and and
     if   ." Big enough"
     else ." Gonna need a bigger box"
     then ;
\ 23 30 7 boxtest Big enough ok
\ 1 1 1 boxtest Gonna need a bigger box ok
\ 23 30 6 boxtest Gonna need a bigger box ok

















