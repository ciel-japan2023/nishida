use nishida;

SELECT * FROM Worker; #品番マスタ　テーブル作成
Drop Table If Exists em_m_item;
Create Table
	em_m_item(
		item_cd			varchar(5)
		,item_name		varchar(20)
		,item_type		varchar(5)
	);

ALTER TABLE em_m_item
	ADD CONSTRAINT em_m_item_pk
	PRIMARY KEY (item_cd);
    
    
SELECT * FROM Worker; #拠点マスタ　テーブル作成
Drop Table If Exists em_m_location;
Create Table
	em_m_location(
		location_cd			varchar(30)
		,location_name		varchar(50)
	);

ALTER TABLE em_m_location
	ADD CONSTRAINT em_m_location_pk
	PRIMARY KEY (location_cd);
    
    
    SELECT * FROM Worker; #品番在庫　テーブル作成
    Drop Table If Exists em_t_stock_item;
    Create Table
	em_t_stock_item(
		location_cd		varchar(5)
		,item_cd		varchar(5)
		,item_qty		numeric(3)
	);

ALTER TABLE em_t_stock_item
	ADD CONSTRAINT em_t_stock_item_pk
	PRIMARY KEY (item_cd, location_cd);


SELECT * FROM Worker; #コードマスタ　テーブル作成
Drop Table If Exists em_m_code;

Create Table
	em_m_code(
		code_type		varchar(10)
		,code_value		varchar(10)
		,code_name		varchar(20)
	);

ALTER TABLE em_m_code
	ADD CONSTRAINT em_m_code_pk
	PRIMARY KEY (code_type, code_value);