use nishida;

Create Table
	em_m_code(
		code_type		varchar(5)
		,codo_chi		varchar(5)
		,code_name		numeric(3)
	);

ALTER TABLE em_m_code
ADD CONSTRAINT em_m_code_pk
PRIMARY KEY (code_type);
    
show tables;