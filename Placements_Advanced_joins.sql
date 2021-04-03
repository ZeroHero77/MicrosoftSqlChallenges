select students.name
from students
inner join packages
on students.id = packages.id
inner join friends
on students.id = friends.id
left join packages as p2
on friends.friend_id = p2.id
where p2.salary > packages.salary
order by p2.salary
