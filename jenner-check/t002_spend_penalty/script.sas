/* Q2: where monthly spend > limit, impose 2% penalty of credit limit */
proc sql;
select
    b.Customer,
    sum(a.Amount) as monthly_spend,
    b.limits,
    case
        when sum(a.Amount) > b.limits then (b.limits * 0.02)
        else 0
    end as penalty_amount
from spend as a
join cb as b on a.Costomer = b.Customer
group by b.Customer, b.limits;
quit;
