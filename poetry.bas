10 PRINT TAB(30);"POETRY"
20 PRINT TAB(15);"CREATIVE COMPUTING  MORRISTOWN, NEW JERSEY"
30 PRINT:PRINT:PRINT
90 ON I GOTO 100,101,102,103,104
100 PRINT "MIDNIGHT DREARY";:GOTO 210
101 PRINT "FIERY EYES";:GOTO 210
102 PRINT "BIRD OR FIEND";:GOTO 210
103 PRINT "THING OF EVIL";:GOTO 210
104 PRINT "PROPHET";:GOTO 210
110 ON I GOTO 111,112,113,114,115
111 PRINT "BEGUILING ME";:U=2:GOTO 210
112 PRINT "THRILLED ME";:GOTO 210
113 PRINT "STILL SITTING....";:GOTO 212
114 PRINT "NEVER FLITTING";:U=2:GOTO 210
115 PRINT "BURNED";:GOTO 210
120 ON I GOTO 121,122,123,124,125
121 PRINT "AND MY SOUL";:GOTO 210
122 PRINT "DARKNESS THERE";:GOTO 210
123 PRINT "SHALL BE LIFTED";:GOTO 210
124 PRINT "QUOTH THE RAVEN";:GOTO 210
125 IF U=0 THEN 210
126 PRINT "SIGN OF PARTING";:GOTO 210
130 ON I GOTO 131,132,133,134,135
131 PRINT "NOTHING MORE";:GOTO 210
132 PRINT "YET AGAIN";:GOTO 210
133 PRINT "SLOWLY CREEPING";:GOTO 210
134 PRINT "...EVERMORE";:GOTO 210
135 PRINT "NEVERMORE";
210 IF U=0 OR RND(1)>.19 THEN 212
211 PRINT ",";:U=2
212 IF RND(1)>.65 THEN 214
213 PRINT " ";:U=U+1:GOTO 215
214 PRINT : U=0
215 I=INT(INT(10*RND(1))/2)+1
220 J=J+1 : K=K+1
230 IF U>0 OR INT(J/2)<>J/2 THEN 240
235 PRINT "     ";
240 ON J GOTO 90,110,120,130,250
250 J=0 : PRINT : IF K>20 THEN 270
260 GOTO 215
270 PRINT : U=0 : K=0 : GOTO 110
999 END
