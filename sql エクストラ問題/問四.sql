select rank()over(order by Population desc) as junni_rank,city.Name,city.Population
		from  country
			inner join city on country.Code = city.CountryCode
			and Code ='JPN'
		
order by Population desc;
	
        