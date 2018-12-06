data dummy;
input X1 X2 X3 X4 X5;
cards;
21 
42 
13 
10 
29
;
run;
data dummy;
set dummy;
max = max(X1,X2,X3,X4,X5);
min = min(X1,X2,X3,X4,X5);
sum = sum(X1,X2,X3,X4,X5);
median = median(X1,X2,X3,X4,X5);
mean = mean(X1,X2,X3,X4,X5);
sqrt = sqrt(sum(X1,X2,X3,X4,X5));
run;
proc print data= dummy;
run;