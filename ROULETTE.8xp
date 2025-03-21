:"Roulette in TI-BASIC by Coder_2917
:"DDDDDD1111DDDDDDDDDD11BBBB11DDDDDD11BBB11BBB11DDDD1BBBB11BBBB1DDD1BBBBBBBBBBBB1DD1BBBBBB3BBBBB1D1BBBBBB33BBBBBB11BB11B3B3BB11BB11BB11BBB3BB11BB11BBBBBBB3BBBBBB1D1BBBB33333BBB1DD1BBBBBBBBBBBB1DDD1BBBB11BBBB1DDDD11BBB11BBB11DDDDDD11BBBB11DDDDDDDDDD1111DDDDDD
ClrHome 
100->M
Disp "You start with 100.
Pause "Press [enter]
ClrHome 
Goto M
Lbl M
Menu("         Roulette         ","Check Money",1,"Place a Bet",2,"Change Bet",3,"Spin the Wheel,",4,"Quit",Q

Lbl 1
ClrHome 
Disp "You have $
Output(1,12,M
Pause "Press [enter] to return.
Goto M

Lbl 2
ClrHome
Disp "You can bet up to 10 less
Disp "than your whole balance!
Pause "Press [enter]
Disp "
Disp "You can bet for any of the
Disp "numbers from 1 to 36.
Disp "You can also bet for red
Disp "or black. To do so, you
Disp "have to write that color
Disp "capital letters.
Disp "In this program, you can
Disp "only bet for one color.
Disp " 
Disp "Remember:
Disp "The red numbers are:
Disp "1, 3, 5, 7, 9, 12, 14,
Disp "16, 18, 19, 21, 23, 25,
Disp " 27, 30, 32, 34, and 36.
Disp " 
Disp "The black numbers are:
Disp "2, 4, 6, 8, 10, 11, 13,
Disp "15, 17, 20, 22, 24, 26,
Disp "28, 29, 31, 33, and 35.
Pause "Press [enter]
ClrHome 
Input "Place your bet (Money): ",B
If M-10<=B
Disp "Error: Your bet has to be
Disp "at least $10 less than your
Disp "balance. Please try again.
Pause "Press [enter]
Input "Place your bet: ",B
M-B->M
Disp "Now you have to choose
Disp "between:
Disp " *Any number from 0 to 36
Disp " *Red
Disp " *Black
Disp " *Even/Odd
Pause "Press [enter]
ClrHome 
Lbl M2
Menu("         Choices:         ","Number",5,"Color",6,"Even/Odd",7,"Go back",M
Lbl 5
ClrHome 
Input "Number (1-36):",N
Pause "Press [enter]
ClrHome 
Goto M2
Lbl 6
Disp "Input RED or BLACK for the
Disp "color.
Input "Color: ",Str1
inString(Str1,"RED"->A
inString(Str1,"BLACK"->C
If A=0 and C=0
ClrHome 
Output(1,4,"Error: Invalid Color
Pause "Press [enter]
Goto M2
If A=1 and C=1
Output(1,5,"Error:Too many Colors!
Pause "Press [enter]
If A>1 or C>1
ClrHome 
Output(1,8,"Syntax Error
Pause "Press [enter]
Goto M2
Lbl 7
Disp "Enter 'E' for even and
Input "'O' for odd: ",Str1
inString(Str1,"E->E
inString(Str1,"O->O
If E=1 and O=1
ClrHome 
Output(1,3,"Error: Only choose one
If E>1 or O>1
ClrHome 
Output(1,3,"Error: Only choose one
Lbl 3
ClrHome 
If B=0
Goto M
Input "Change bet to:",B
If M-B<10
Disp "Bet is too high"
Pause "Press [enter]
Goto 3
Lbl 4
ClrHome 
If B=0
Disp "Place a bet first!
Pause "Press [enter]
randInt(0,36->R
Disp R
If R=1 or R=3 or R=5 or R=7 or R=9 or R=12 or R=14 or R=16 or R=18 or R=19 or R=21 or R=23 or R=25 or R=27 or R=30 or R=32 or R=34 R=36 and A=1
Then 
	Disp "It landed on red, and you
	Disp "bet on red! The amount you
	Disp "bet on has been doubled
	Disp "and returned!
	Pause "Press [enter]
End 
2*B+M->M
If R=2 or R=4 or R=6 or R=8 or R=10 or R=11 or R=13 or R=15 or R=17 or R=20 or R=22 or R=24 or R=26 or R=28 or R=29 or R=31 or R=33 or R=35 and C=1
2*B+M->M
If R=N
M+B*36->M
If R=2 or R=4 or R=6 or R=8 or R=10 or R=12 or R=14 or R=16 or R=18 or R=20 or R=22 or R=24 or R=26 or R=28 or R=30 or R=32 or R=34 or R=36 and E=1
2*B+M->M
If R=1 or R=3 or R=5 or R=7 or R=9 or R=11 or R=13 or R=15 or R=17 or R=19 or R=21 or R=23 or R=25 or R=27 or R=29 or R=31 or R=33 or R=35 and O=1
2*B+M->M
Lbl Q
ClrHome 
Stop
