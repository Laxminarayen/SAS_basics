Data col1;
INPUT
  X 1-3
  Y 3
  A $4-9
  z $11;
 DATALINES;
  2laxmi 55
 443Goodbye2L
  ;
  Proc print data=col1;
  title 'Col input';
  RUN;
***Col input selected variables;
DAta columns;
INput 
@1 X 2.
@2 Y 1.
@3 A $7.
@11 Z 1.
@12 Date MMDDYYYY10.;
Format DAte MMDDYYYY10.;
DAtalines;
12HELLO 310/21/1946
4 5Goodbye611/12/1997
;
PROC PRint data = columns;
 title 'Pointers and informats';
 run;
