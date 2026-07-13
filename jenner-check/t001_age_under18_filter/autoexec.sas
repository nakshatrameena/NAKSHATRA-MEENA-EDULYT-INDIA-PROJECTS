/* cap input rows for the captured run */
options obs=100;
/* (t001 loads its cb sample inline in script.sas so the file also runs on its own) */

/* Sample of the repo's own Project-1 data, loaded as WORK datasets     */
/* matching the columns the PROC SQL queries reference (cb/spend/repayment). */

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

data spend;
  length Costomer $6;
  input Costomer $ Amount;
datalines;
A1 331844.0074
A1 441139.8073
A1 32480.00401
A1 90636.96653
A1 1581.969829
A2 357678.5077
A2 280990.7099
A2 390074.79
A2 370300.174
A3 44049.58031
A3 107590.8079
A3 9703.658754
A4 342562.7198
A4 472368.7952
A5 411933.7099
A5 201381.0109
A6 465023.051
A6 206197.1055
A7 191180.0116
A8 236379.3687
A9 88044.12
A10 512000.5
A11 12000.75
A12 305000.25
A13 99000.10
A14 450000.90
A15 7500.33
;
run;

data repayment;
  length Costomer $6;
  input Costomer $ Amount;
datalines;
A1 331844.0074
A1 441139.8073
A1 32480.00401
A2 357678.5077
A2 280990.7099
A3 44049.58031
A3 9703.658754
A4 342562.7198
A5 411933.7099
A6 465023.051
A7 191180.0116
A8 236379.3687
A9 44022.06
A10 256000.25
A11 6000.37
A12 152500.12
A13 49500.05
A14 225000.45
A15 3750.16
;
run;
