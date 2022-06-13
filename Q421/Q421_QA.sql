use Q;
go

-- by Department, Service
select 
	[Department], 
	[Service],
	[Region], 
	[District], 
	[Plan], 
	[Period],
	convert(decimal(12,4),Sum([Point Weight]))										[Sum of Point Weight],
	convert(decimal(12,4),Sum([Point Actual]))										[Sum of Point Actual],
	convert(decimal(12,4),Sum([Point Target]))										[Sum of Point Target],
	convert(decimal(12,4),Sum([Point Performance]))									[Sum of Point Performance],
	convert(decimal(12,4),Sum([Point Weighted Performance]))						[Sum of Point Weighted Performance],
	convert(decimal(12,4),Sum([Point Weighted Performance])/Sum([Point Weight]))	[Q]
from 
	Q421.vPoints
group by rollup(
	[Department], 
	[Service], 
	[Region], 
	[District], 
	[Plan], 
	[Period])
order by 
	[Department], 
	[Service],
	[Region], 
	[District], 
	[Plan], 
	[Period];