select  Name,Language,Percentage 
	from  country
		inner join countrylanguage on country.Code = countrylanguage.CountryCode
		 and IsOfficial = 'T'
	where Language = 'Spanish'
		and Percentage > 0
		order by Percentage desc;
        