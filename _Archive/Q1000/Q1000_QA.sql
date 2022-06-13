use Q;
go

-- Grand Total
select 
	convert(decimal(8,2),Sum(Weight))							[Sum of Weight],
	convert(decimal(8,2),Sum(WeightedPerformance))				[Sum of WeightedPerformance],
	convert(decimal(5,4),Sum(WeightedPerformance)/Sum(Weight))	[Q]
from Q1000;

-- by District
select 
	DistrictID,
	convert(decimal(8,2),Sum(Weight))							[Sum of Weight],
	convert(decimal(8,2),Sum(WeightedPerformance))				[Sum of WeightedPerformance],
	convert(decimal(5,4),Sum(WeightedPerformance)/Sum(Weight))	[Q]
from Q1000 
group by DistrictID 
order by DistrictID;

-- by District, Service
select 
	DistrictID, 
	ServiceID,
	convert(decimal(8,2),Sum(Weight))							[Sum of Weight],
	convert(decimal(8,2),Sum(WeightedPerformance))				[Sum of WeightedPerformance],
	convert(decimal(5,4),Sum(WeightedPerformance)/Sum(Weight))	[Q]
from Q1000 
where
	DistrictID in (1) and
	ServiceID in (1) and
	PeriodID in (1,2)
group by DistrictID, ServiceID
order by DistrictID, ServiceID;

-- by District, Service rollup
select 
	DistrictID, 
	ServiceID,
	PeriodID,
	convert(decimal(8,2),Sum(Weight))							[Sum of Weight],
	convert(decimal(8,2),Sum(WeightedPerformance))				[Sum of WeightedPerformance],
	convert(decimal(5,4),Sum(WeightedPerformance)/Sum(Weight))	[Q]
from Q1000 
where
	DistrictID in (1) and
	ServiceID in (1) and
	PeriodID in (1,2)
group by rollup(DistrictID, ServiceID, PeriodID)
order by DistrictID, ServiceID, PeriodID;