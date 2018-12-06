data increment;
birthdt = '24NOV96'd;
retirement = intnx('year',birthdt,60);
format birthdt retirement date9.;
run;