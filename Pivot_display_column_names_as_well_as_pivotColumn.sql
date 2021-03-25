select 
		id , [type] ,	 [Yes] as [Yes], [No] as [No] 
from
( 
	select 
			id , [type] , column_to_pivot
	from 
			[table_name]
	group by 
	
			id , [type] ,column_to_pivot
) 
	as [alias]

pivot

(
			count(column_to_pivot)
for 
			column_to_pivot in
( 
		    [Yes], [No]
)

)
 as [alias2];
