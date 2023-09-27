use nishida;

select location_name,code_name,sum(item_qty)
	from(
			select item_qty,item_type,location_name
				from em_t_stock_item
					left join em_m_item on em_t_stock_item.item_cd = em_m_item.item_cd
					left join em_m_location on em_t_stock_item.location_cd = em_m_location.location_cd
		)sub
        
	left join em_m_code on sub.item_type = em_m_code.code_value and em_m_code.code_type = "item_type"
		group by location_name,code_name
			having sum(item_qty) >= 30 
		order by location_name,code_name desc;
					
			
	
