/* Q7: which segment is spending more money */
proc sql;
select Segment, sum(Amount) as spending_money
from cb join spend on spend.Costomer = cb.Customer
group by Segment
order by spending_money desc;
quit;
