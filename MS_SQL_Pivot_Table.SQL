select [Doctor] as [Doctor], [Actor] as [Actor], [Professor] as [Professor], [Singer] as [Singer]
from
( select occupation, name from occupations group by occupation, name) as a
pivot
(
 min(name)
for occupation in
( [Doctor], [Actor], [Professor], [Singer])
)
 as c;