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


\ : /DATE     ( n as ddmmyy -- )
\       s>d <# # # 47 hold # # 47 hold #s #> type space ;

: SEXTAL
      6 base ! ;

: :00
      # sextal # decimal 58 hold ; \ Decimal 58 = ":"

: SEC       ( n as secs -- )
      S>d <# :00 :00 #s #> type space ;

: SLASH
      # # 47 hold ;

: /DATE
      s>d <# slash slash #s #> type space ;

: /D.  ( d -- )
      swap over dabs <# #s sign #> type space ;
































