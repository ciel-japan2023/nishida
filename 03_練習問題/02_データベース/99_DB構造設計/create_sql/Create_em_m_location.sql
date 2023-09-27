use nishida;

Create Table
	em_m_location(
		location_cd			varchar(30)
		,location_name		varchar(50)
	);

ALTER TABLE em_m_location
	ADD CONSTRAINT em_m_location_pk
	PRIMARY KEY (location_cd);

Comment on Table em_m_location is '_}X^';
Comment on Column em_m_location.location_cd is '_R[h';
Comment on Column em_m_location.location_name is '_¼';

show tables;