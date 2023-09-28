select rank()over(order by Population desc) as junni_rank,Continent,city.Name,city.Population
		from  country
			inner join city on country.Code = city.CountryCode
			and Continent ='Europe'
		order by Population desc;
		
	
        
		
        