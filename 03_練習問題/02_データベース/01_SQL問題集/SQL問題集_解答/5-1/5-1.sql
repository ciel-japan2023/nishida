select item_name,item_qty
	from  em_t_stock_item
		left join em_m_location on em_t_stock_item.location_cd =  em_m_location.location_cd
		left join em_m_item on em_t_stock_item.item_cd = em_m_item.item_cd
    where em_t_stock_item.location_cd = 'CN001'
		order by item_qty;