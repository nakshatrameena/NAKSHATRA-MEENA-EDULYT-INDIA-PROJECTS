/* Q8: which age group is spending more money */
proc sql;
select
    sum(Amount) as total_spending,
    case
        when Age < 18 then 'Under 18'
        when Age >= 18 and Age < 30 then '18-29'
        when Age >= 30 and Age < 40 then '30-39'
        else '40 and above'
    end as age_group
from cb
join spend on cb.Customer = spend.Costomer
group by age_group
order by total_spending desc;
quit;
