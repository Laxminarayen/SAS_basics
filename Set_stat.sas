DAta stud;
  input name $ age;
  datalines;
  Laxmi 22
  akash 21
  aadhi 23
proc print data = stud;
run;

DAta new;
 set stud;
 if age lt 23;
run;
proc print data = new;