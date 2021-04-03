select 
    b1.n,
    q=case when p is null then 'Root'
    when exists (select 0 from bst b2 where b1.n=b2.p) then 'Inner'
    else 'Leaf'
    end
from bst b1
order by n;
