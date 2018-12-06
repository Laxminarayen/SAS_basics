data dataset1;
input Name $1-22  
Age 
Gender $;
datalines;
Vincent, Martina          34 F
Vincent, Martina          34 F
Phillipon, Marie-Odile    28 F
Gunter, Thomas            27 M
Harbinger, Nicholas       36 M
Benito, Gisela            32 F
Rudelich, Herbert         39 M
Sirignano, Emily          12 F
Morrison, Michael         32 M
Morrison, Michael         32 M
Jen,peter                 30 M
John,Abraham              72 M
;
proc sort data= dataset1;
by Name;
run;
data set2;
input  IdNumber $1-11 
Name $ 13-29
Salary;
datalines;
074-53-9892 Vincent, Martina             35000
929-75-0218 Gunter, Thomas               27500
228-88-9649 Benito, Gisela               28000
528-88-9649 Benito, Gisela               28000
029-46-9261 Rudelich, Herbert            35000
442-21-8075 Sirignano, Emily             5000
840-21-8075 Sir, Emily                   5000
942-21-8075 Anjlin,Jame                  15000
;
proc sort data = set2;
by Name;
run;
proc print data = dataset1;
title "Dataset 1";
run;
proc print data= set2;
title "Dataset 2";
run;
data Totalinfo;
   merge dataset1 set2;
   by name;
run;
proc print data=Totalinfo;
ods html file="/folders/myfolders/reg.html";
title "Merged!";
run;
data Totalinfo2;
   merge dataset1 (IN = A)
   set2 (IN= B);
   by name;
   if A and B then output;
   run;
proc print data = totalinfo2;
ods pdf file="/folders/myfolders/reg.pdf";
title "AND";
run;
data Totalinfo2;
   merge dataset1 (IN = A)
   set2 (IN= B);
   by name;
   if A then output;
   run;
proc print data = totalinfo2;
ods excel file="/folders/myfolders/reg.xls";
title "A";
run;
data Totalinfo2;
   merge dataset1 (IN = A)
   set2 (IN= B);
   by name;
   if B then output;
   run;
proc print data = totalinfo2;
ods csvall file="/folders/myfolders/reg.csv";
title "B";
run;