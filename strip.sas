DAta strip;
one = " one ";
two = " two ";
result = strip(one) || strip(two);
run;
proc print data = strip noobs;
title "Listing of Data set Strip";
Run;