with cte1 as 
(
select 
cte1 = concat(Name,'(',left(Occupation,1),')')
from Occupations
order by Name
offset 0 rows
),
cte2 as
(
select 
cte2 = concat('There are a total of ', (select count(1) from Occupations where Occupation = 'Doctor'),' doctors.')
union all
select concat('There are a total of ', (select count(1) from Occupations where Occupation = 'actor'),' actors.')
union all
select concat('There are a total of ', (select count(1) from Occupations where Occupation = 'singer'),' singers.')
union all
select concat('There are a total of ', (select count(1) from Occupations where Occupation = 'professor'),' professors.')
)    
select * from cte1
union all
select * from cte2
