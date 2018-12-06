data Funct;
input number1
number2
number3
;
datalines;
11.85
32.5
5678.75
;
data Funct;
set Funct;
Ceil1 = ceil(number1);
Floor1 = floor(number1);
int = int(number2);
round = round(number3);
run;
proc print data = Funct;
title "Inbuilt functions";
run;