select *
	from(
			select
				rank() over(order by GNP desc) as junni_rank,Name,GNP 
			from  country
		) as junni
	where junni.junni_rank <= 20 ;

		
        