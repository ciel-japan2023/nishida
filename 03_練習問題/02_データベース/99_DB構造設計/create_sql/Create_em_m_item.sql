use nishida;

Create Table
	em_m_item(
		item_cd			varchar(5)
		,item_name		varchar(20)
		,item_type		varchar(5)
	);

ALTER TABLE em_m_item
	ADD CONSTRAINT em_m_item_pk
	PRIMARY KEY (item_cd);

Comment on Table em_m_item is 'iÔ}X^';
Comment on Column em_m_item.item_cd is 'iÔ';
Comment on Column em_m_item.item_name is 'i¼';
Comment on Column em_m_item.item_type is 'ií';

show tables;