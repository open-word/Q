use Q;
go

-- Grand Total
select 
	convert(decimal(8,2),Sum(Weight))							[Sum of Weight],
	convert(decimal(8,2),Sum(WeightedPerformance))				[Sum of WeightedPerformance],
	convert(decimal(5,2),Sum(WeightedPerformance)/Sum(Weight))	[Q]
from Q333.vPoints;

-- by XID
select 
	XID,
	convert(decimal(8,2),Sum(Weight))							[Sum of Weight],
	convert(decimal(8,2),Sum(WeightedPerformance))				[Sum of WeightedPerformance],
	convert(decimal(5,2),Sum(WeightedPerformance)/Sum(Weight))	[Q]
from Q333.vPoints
group by XID 
order by XID;

-- by District, Service
select 
	XID, 
	YID,
	convert(decimal(8,2),Sum(Weight))							[Sum of Weight],
	convert(decimal(8,2),Sum(WeightedPerformance))				[Sum of WeightedPerformance],
	convert(decimal(5,2),Sum(WeightedPerformance)/Sum(Weight))	[Q]
from Q333.vPoints
where
	XID in (1) and
	YID in (1) and
	ZID in (1,2)
group by XID, YID
order by XID, YID;

-- by District, Service rollup
select 
	XID, 
	YID,
	ZID,
	convert(decimal(8,2),Sum(Weight))							[Sum of Weight],
	convert(decimal(8,2),Sum(WeightedPerformance))				[Sum of WeightedPerformance],
	convert(decimal(5,4),Sum(WeightedPerformance)/Sum(Weight))	[Q]
from Q333.vPoints
where
	XID in (1) and
	YID in (1) and
	ZID in (1,2)
group by rollup(XID, YID, ZID)
order by XID, YID, ZID;