data intervals;
birthdate = '24NOV1996'd;
yrs = intck('year',birthdate,'29Sep2006'd);
months = intck('month',birthdate,'29Sep2006'd);
weeks = intck('week',birthdate,'29Sep2006'd);
qtrs = intck('qtr',birthdate,'29Sep2006'd);
put _all_;
run;

data increment;
birthdt = '22oct91'd;
retirement = intnx('year',birthdt,60);
format birthdt retirement date9.;
run;