data company;
input 
Name $ 1-25 
Age 27-28 
Gender $ 30;
   datalines;
Vincent, Martina          34 F
Phillipon, Marie-Odile    28 F
Gunter, Thomas            27 M
Harbinger, Nicholas       36 M
Benito, Gisela            32 F
Rudelich, Herbert         39 M
Sirignano, Emily          12 F
Morrison, Michael         32 M
;
proc sort data=company;
   by Name;
run;
proc print data=company;
   title 'Company';
run;

data finance;
   input Phone_number $ 1-11 
   Name $ 13-40 
   Salary;
   datalines;
074-53-9892 Vincent, Martina             35000
776-84-5391 Phillipon, Marie-Odile       29750
929-75-0218 Gunter, Thomas               27500
446-93-2122 Harbinger, Nicholas          33900
228-88-9649 Benito, Gisela               28000
029-46-9261 Rudelich, Herbert            35000
442-21-8075 Sirignano, Emily             5000
;
proc sort data=finance;
   by Name;
run;
proc print data=finance;
   title 'Employee Information';
run;
data employeeinfo;
   merge company finance;
   by name;
run;

proc print data=employeeinfo;
   title 'Laxmi is Cute!';
   title2 'very cute';
run;
proc contents data = company;
run;
proc datasets;
contents data= company;
run;
options firstobs= 3 obs=9;
proc print data = employeeinfo;
run;
proc print data = employeeinfo;
where Name contains 'Vi';
run;
proc print data = employeeinfo;
title 'Sub total';
sum Gender;
by Name; 
ID Gender;
run;w