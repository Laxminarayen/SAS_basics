DAta Employees;
  Input Name $ age salary Gender $;
  DAtalines;
  Laxmi 23 75000 M
  akash 22 50000 M
  AdityaRam 22 50000 M
  Sid 23 70000 M
  Vasi 22 60000 M
  Ganesh 26 50000 M
  ;
  Run;
PRoc Sort data = employees out = empsort;
by descending age;
run;

PRoc print data = employees;
VAR age salary;
RUN;
