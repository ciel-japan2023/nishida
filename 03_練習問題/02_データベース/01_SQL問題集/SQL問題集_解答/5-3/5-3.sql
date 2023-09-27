select location_name,sum(item_qty ) as sum
	from em_m_location
       left join em_t_stock_item on em_m_location.location_cd = em_t_stock_item.location_cd
       WHERE item_qty is not null
       group by location_name 
       order by sum
       ;
       
	
