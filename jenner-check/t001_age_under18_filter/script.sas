/* Project-1 Q1: provide a meaningful treatment to all values where age < 18. */
/* A sample of the repo's own customer-acquisition (cb) data is loaded first  */
/* so this file runs on its own via /v1/quick.                                 */

data cb;
  length Customer $6 Segment $16;
  input Customer $ Age limits Segment $;
datalines;
A1 0.9285 500000 Self_Employed
A2 35.5346 100000 Salaried_MNC
A3 11.5593 10000 Salaried_Pvt
A4 45.8203 10001 Govt
A5 69.6639 10002 Normal_Salary
A6 35.5786 100000 Self_Employed
A7 52.1022 100001 Salaried_MNC
A8 77.8396 100002 Salaried_Pvt
A9 18.1581 100003 Govt
A10 4.1438 500000 Normal_Salary
A11 61.3411 500000 Normal_Salary
A12 11.1825 500000 Self_Employed
A13 40.1411 500000 Salaried_MNC
A14 6.7724 500000 Salaried_Pvt
A15 22.6808 500000 Govt
;
run;

proc sql;
select * from cb
where age < 18;
quit;
