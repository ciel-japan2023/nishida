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



SELECT * FROM Worker; #データ追加


SELECT * FROM Worker; #品番マスタ
INSERT INTO em_m_item (item_cd,item_name,item_type) 
	 VALUES ('pc001','デスクトップパソコン','pc'),
			('pc002','ノートパソコン','pc'),
			('pc999','ｼｬｯﾁｮｻﾝ専用パソコン','pc'),
			('sp001','Androidスマホ','sp'),	
			('sp002','iPhoneスマホ','sp'),
			('sp999','超高級なあいふぉん','sp'),
			('pb001','ポケベル','pb');
    

SELECT * FROM Worker; #拠点マスタ   
INSERT INTO em_m_location (location_cd,location_name) 
	 VALUES ('CN001','本社'),			
			('CN002','名古屋事業所'),			
			('CT001','関東営業所'),			
			('CT002','千葉事業所'),		
			('CT003','秋葉原事業所');	
  
  
  SELECT * FROM Worker; # 品番在庫 
  INSERT INTO em_t_stock_item (location_cd,item_cd,item_qty)
	 VALUES ('CN001','pc001',2),
			('CN001','pc999',1),	
			('CN001','sp001',3),	
			('CN002','pc001',10),
			('CN002','pc002',20),
			('CN002','sp001',30),
			('CT001','pc002',5),
			('CT001','sp002',4),
			('CT001','sp999',1),
			('CT002','pc001',7),
			('CT002','pc002',13),
			('CT002','sp001',18),
			('CT002','sp002',12),
			('CT003','pc001',999),
			('CT003','pb001',1);
		
  
SELECT * FROM Worker; # コードマスタ  
INSERT INTO em_m_code (code_type,code_value,code_name) 
	  VALUES ('item_type','pc','パソコン'),
             ('item_type','sp','スマホ'),
             ('item_type','pb','ポケベル'),
             ('model_cd','sp','スマートフォン'),
             ('model_cd','pc','パーソナルコンピュータ');
             
       
             
       