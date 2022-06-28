drop table if exists T;

create table T
(
	Partner nvarchar(10),
	Indicator nvarchar(15),
	Budget decimal (8,2),
	Performance decimal (8,2),
	WeightedPerformance as convert(decimal(8,2), Budget * Performance)
);

-- The performance for an indicator is consistent across all budget (Partner) slices.
insert T (Partner, Indicator, Budget, Performance) values
	('Partner A', 'Indicator 1', 10, 0.50),
	('Partner A', 'Indicator 2', 20, 1.50),
	('Partner B', 'Indicator 1', 30, 0.50),
	('Partner B', 'Indicator 2', 40, 1.50);

select * from T;

-- By Indicator, Partner

select 
	Indicator, 
	Partner, 
	sum(WeightedPerformance)/sum(Budget) [Q] 
from 
	T 
group by rollup (
	Indicator,
	Partner);

-- By Partner, Indicator

select
	Partner, 
	Indicator,
	sum(WeightedPerformance)/sum(Budget) [Q] 
from 
	T 
group by rollup (
	Partner,
	Indicator);

drop table T;