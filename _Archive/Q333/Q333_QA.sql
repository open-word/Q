use Q;
go

-- by Department, Service
select 
	[Department ID], 
	[Service ID],
	[Region ID], 
	[District ID], 
	[Plan ID], 
	[Period ID],
	convert(decimal(12,4),Sum([Point Weight]))										[Sum of Point Weight],
	convert(decimal(12,4),Sum([Point Actual]))										[Sum of Point Actual],
	convert(decimal(12,4),Sum([Point Target]))										[Sum of Point Target],
	convert(decimal(12,4),Sum([Point Performance]))									[Sum of Point Performance],
	convert(decimal(12,4),Sum([Point Weighted Performance]))						[Sum of Point Weighted Performance],
	convert(decimal(12,4),Sum([Point Weighted Performance])/Sum([Point Weight]))	[Q]
from 
	Q333.vPoints
where
	[Point ID] in (1,319)
group by rollup(
	[Department ID], 
	[Service ID], 
	[Region ID], 
	[District ID], 
	[Plan ID], 
	[Period ID])
order by 
	[Department ID], 
	[Service ID],
	[Region ID], 
	[District ID], 
	[Plan ID], 
	[Period ID];