data  research_development;
length Department $ 10;
Input 
@1 project $5.
@6  Department $10.
@17 Manager $9.
@26 Staff_count 2.;
Datalines;
MP971 Designing Daugherty10
MP971 Coding    Newton    8
MP971 Testing   Miller    7
SL827 Designing Ramirez   8
SL827 Coding    Cho      10
SL827 Testing   Baker     7
WP057 Designing Hascal   11
WP057 Coding    Constant 13
WP057 Testing   Slivko   10
;
Proc print data=research_development;
  title 'Research dept';
  RUN;
data  Publication;
Input
@23 project $5.
@12 Department $10.
@1 Manager $9.
@29 Staff_count 2.;
datalines;
Cook       Writing    WP057 5
Deakins    Writing    SL827 7
Franscombe Editing    MP971 4
Henry      Editing    WP057 3
King       Production SL827 5
Krysonski  Production WP057 3
Lassiter   Graphics   SL827 3
Miedema    Editing    SL827 5
Morard     Writing    MP971 6
Posey      Production MP971 4
Spackle    Graphics   WP057 2
;
PRoc Sort data = Publication out = publication;
by project;
run;
proc append base=research_development data= publication;
run;
proc print data=research_development;
 title 'Publication and research dept';
 run;