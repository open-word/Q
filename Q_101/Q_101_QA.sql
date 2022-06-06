use Q;
go

-- by Service
select 
	[Service], 
	convert(decimal(8,2),Sum(w))			[Sum of w],
	convert(decimal(8,2),Sum(wp))			[Sum of wp],
	convert(decimal(5,2),Sum(wp)/Sum(w))	[Q]
from Q_101 group by [Service] order by		[Service];

-- overall
select 
	convert(decimal(8,2),Sum(w))			[Sum of w],
	convert(decimal(8,2),Sum(wp))			[Sum of wp],
	convert(decimal(5,2),Sum(wp)/Sum(w))	[Q]
from Q_101;

-- rollup
select 
[Service],[District],
	convert(decimal(8,2),Sum(w))			[Sum of w],
	convert(decimal(8,2),Sum(wp))			[Sum of wp],
	convert(decimal(5,2),Sum(wp)/Sum(w))	[Q]
from Q_101
group by rollup ([Service], [District]);

-- rollup with filter
select 
[Service],[District],
	convert(decimal(8,2),Sum(w))			[Sum of w],
	convert(decimal(8,2),Sum(wp))			[Sum of wp],
	convert(decimal(5,2),Sum(wp)/Sum(w))	[Q]
from Q_101
where [Service] = 'A' and [District] in (1,2)
group by rollup ([Service], [District]);