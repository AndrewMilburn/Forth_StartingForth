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

















