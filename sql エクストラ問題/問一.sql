select Name,Language,Percentage from  country
		inner join countrylanguage on country.Code = countrylanguage.CountryCode
	where Language = 'English'
		and Percentage > 0
			order by Percentage;
        