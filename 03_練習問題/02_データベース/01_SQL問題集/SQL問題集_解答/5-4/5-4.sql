select item_name,sum(item_qty) as sum
	from em_m_item
        left join em_t_stock_item on em_m_item.item_cd = em_t_stock_item.item_cd
    where item_qty is not null
          group by item_name
          order by sum desc;
