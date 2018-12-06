Data multiple;
input ques : $1. @@;
ques = translate(ques,'ABCDE','12345');
Datalines;
1 4 3 2 5
5 3 4 2 1
;
proc print data = multiple Noobs;
title "Listing of data set multiple";
run;