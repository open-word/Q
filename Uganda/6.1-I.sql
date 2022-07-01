use Uganda;
go

create table I
(
	IndicatorID nchar(5),
	IndicatorPoints float,
	constraint PK_I primary key (IndicatorID)
);

insert I (IndicatorID) values
	('01.01'),
	('01.02'),
	('02.01'),
	('02.02');

-- Allocate IndicatorPoints using a random number.
update 
	i 
set
	i.IndicatorPoints = rn.RN_010_090 -- IndicatorPoints is constant for a given Indicator.
from 
	I i
	join
	(
		select 
			i1.IndicatorID, 
			500+row_number() over(order by i1.IndicatorID) RNID -- start at 5
		from 
			I i1
	) i2 on I.IndicatorID = i2.IndicatorID
	join RN rn on i2.RNID = rn.RNID;

--select * from I;

select '6.1'
go