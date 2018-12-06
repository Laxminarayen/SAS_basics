DAta convert;
input @1 Address $20.;
Address = tranwrd(Address,'street','St.');
Address = tranwrd(Address,'Avenueue','Ave.');
Address = tranwrd(Address,'Road','Rd.');
Datalines;
89 Lazy Brook Road
123 River rd.
12 Main street
;
proc print data = convert;
title 'Listing of data set convert';
run;