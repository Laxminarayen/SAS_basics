data lead;
input string $15.;
left_string = Left(string);
datalines;
ABC
  XYZ
    Ron Cody
;
proc print data=lead noobs;
title"Left_funct";
Format string left_string $quote17.;
run;