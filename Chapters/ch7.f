( Chapter 7 )
page
empty
cr

: PRINTABLES      ( -- )
      127 32
      do    i emit space
      loop  ;

: DEMO      ( n -- )
      s>d <# # # [char] . hold #s [char] $ hold #> type ;

: DEMO2      ( d -- )
      <# # # [char] . hold #s [char] $ hold #> type ;

: .PH#      ( n -- )
      s>d <# # # # # 45 hold #s #> type space ;

hex : .PH#2 ( n -- )
      s>d <# # # # # 2D hold #s #> type space ;
decimal

: .PH#3     ( d -- )
      <# # # # # 45 hold #s #> type space ;



































