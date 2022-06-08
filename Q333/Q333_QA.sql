use Q;
go

-- Grand Total
select 
	convert(decimal(12,4),Sum(Weight))							[Sum of Weight],
	convert(decimal(12,4),Sum(WeightedPerformance))				[Sum of WeightedPerformance],
	convert(decimal(12,4),Sum(WeightedPerformance)/Sum(Weight))	[Q]
from Q333.vPoints;

-- by Service
select 
	ServiceID,
	convert(decimal(12,4),Sum(Weight))							[Sum of Weight],
	convert(decimal(12,4),Sum(WeightedPerformance))				[Sum of WeightedPerformance],
	convert(decimal(12,4),Sum(WeightedPerformance)/Sum(Weight))	[Q]
from Q333.vPoints
group by ServiceID 
order by ServiceID;

-- by Service, District
select 
	ServiceID, 
	DistrictID,
	convert(decimal(12,4),Sum(Weight))							[Sum of Weight],
	convert(decimal(12,4),Sum(WeightedPerformance))				[Sum of WeightedPerformance],
	convert(decimal(12,4),Sum(WeightedPerformance)/Sum(Weight))	[Q]
from Q333.vPoints
where
	ServiceID in (1) and
	DistrictID in (1) and
	PeriodID in (1,2)
group by ServiceID, DistrictID
order by ServiceID, DistrictID;

-- by District, Service rollup
select 
	ServiceID, 
	DistrictID,
	PeriodID,
	convert(decimal(12,4),Sum(Weight))							[Sum of Weight],
	convert(decimal(12,4),Sum(WeightedPerformance))				[Sum of WeightedPerformance],
	convert(decimal(12,4),Sum(WeightedPerformance)/Sum(Weight))	[Q]
from Q333.vPoints
where
	ServiceID in (1) and
	DistrictID in (1) and
	PeriodID in (1,2)
group by rollup(ServiceID, DistrictID, PeriodID)
order by ServiceID, DistrictID, PeriodID;