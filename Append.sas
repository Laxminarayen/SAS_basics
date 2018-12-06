data sales;
INPUT EMPLOYED $1-9
NAME $11-29
@30 HIREDATE DATE9.
SALARY
HOMEPHONE  $;
FORMAT HIREDATE DATE9.;
DATALINES;
429685482 MARTIN, VIRGINIA 09aug1990 34800 493-0824
244967839 Siongleton,MaryAnn,24apr1995 27900 992-2623
;
run;
proc print data = sales;
   title 'sales department employees';
   run;
data customer_support;
INPUT EMPLOYED $1-9
NAME $11-29
@30 HIREDATE DATE9.
SALARY
HOMEPHONE  $;
FORMAT HIREDATE DATE9.;
DATALINES;
429685486 MARTIN, VIRGINIA  09aug1990 34800 493-0824
244967837 Siogleton,MaryAnn,24apr1995 27900 992-2623
;
run;
proc print data = customer_support;
   title 'customer_support department employees';
   run;
proc append base=sales data=customer_support;
run;
proc print data=sales;
 title 'Employees in sales and customer dept';
 run;
data dept1_2;
  set sales
       customer_support;
       run;
proc print data = dept1_2;
title 'Emplooyees in sales  and customer support';
run;