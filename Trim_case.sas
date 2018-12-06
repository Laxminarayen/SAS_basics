Data put_together;
length name $ 45;
informat name1-name3 $15.;
infile datalines missover;
input name1 name2 name3;
name_1 ='   '||trim(name1) || Trim(name2) || Trim(name3)|| '   ';
datalines;
ronald cody
julia child
henry ford
lee harward oswald
;
proc print data = put_together noobs;
title "LIsting of data set put_together";
run;