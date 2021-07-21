2 PRINT TAB(32);"FLIPFLOP"
4 PRINT TAB(15);"CREATIVE COMPUTING  MORRISTOWN, NEW JERSEY"
6 PRINT
10 REM *** CREATED BY MICHAEL CASS
15 DIM A$(20)
20 PRINT "THE OBJECT OF THIS PUZZLE IS TO CHANGE THIS:"
30 PRINT
40 PRINT "X X X X X X X X X X"
50 PRINT
60 PRINT "TO THIS:"
70 PRINT
80 PRINT "O O O O O O O O O O"
90 PRINT
100 PRINT "BY TYPING THE NUMBER CORRESPONDING TO THE POSITION OF THE"
110 PRINT "LETTER ON SOME NUMBERS, ONE POSITION WILL CHANGE, ON"
120 PRINT "OTHERS, TWO WILL CHANGE.  TO RESET LINE TO ALL X'S, TYPE 0"
130 PRINT "(ZERO) AND TO START OVER IN THE MIDDLE OF A GAME, TYPE "
140 PRINT "11 (ELEVEN)."
170 PRINT
180 REM
190 Q=RND(1)
200 PRINT "HERE IS THE STARTING LINE OF X'S."
210 PRINT
220 C=0
230 PRINT "1 2 3 4 5 6 7 8 9 10"
240 PRINT "X X X X X X X X X X"
250 PRINT
260 REM
270 FOR X=1 TO 10
280 A$(X)="X"
290 NEXT X
300 GOTO 320
310 PRINT "ILLEGAL ENTRY--TRY AGAIN."
320 PRINT "INPUT THE NUMBER";
330 INPUT N
340 IF N<>INT(N) THEN 310
350 IF N=11 THEN 180
360 IF N>11 THEN 310
370 IF N=0 THEN 230
380 IF M=N THEN 510
390 M=N
400 IF A$(N)="O" THEN 480
410 A$(N)="O"
420 R=TAN(Q+N/Q-N)-SIN(Q/N)+336*SIN(8*N)
430 N=R-INT(R)
440 N=INT(10*N)
450 IF A$(N)="O" THEN 480
460 A$(N)="O"
470 GOTO 610
480 A$(N)="X"
490 IF M=N THEN 420
500 GOTO 610
510 IF A$(N)="O" THEN 590
520 A$(N)="O"
530 R=.592*(1/TAN(Q/N+Q))/SIN(N*2+Q)-COS(N)
540 N=R-INT(R)
550 N=INT(10*N)
560 IF A$(N)="O" THEN 590
570 A$(N)="O"
580 GOTO 610
590 A$(N)="X"
600 IF M=N THEN 530
610 PRINT "1 2 3 4 5 6 7 8 9 10"
620 FOR Z=1 TO 10: PRINT A$(Z);" ";: NEXT Z
630 C=C+1
640 PRINT
650 FOR Z=1 TO 10
660 IF A$(Z)<>"O" THEN 320
670 NEXT Z
680 IF C>12 THEN 710
690 PRINT "VERY GOOD.  YOU GUESSED IT IN ONLY";C;"GUESSES."
700 GOTO 720
710 PRINT "TRY HARDER NEXT TIME.  IT TOOK YOU";C;"GUESSES."
720 PRINT "DO YOU WANT TO TRY ANOTHER PUZZLE";
730 INPUT X$
740 IF LEFT$(X$,1)="N" THEN 780
760 PRINT
770 GOTO 180
780 END
