use Q;
go

update 
	r
set 
	r.[Indicator 1 Weight] = r.[Indicator 1 Budget] / t.[Sum Indicator 1 Budget],
	r.[Indicator 2 Weight] = r.[Indicator 2 Budget] / t.[Sum Indicator 2 Budget]
from
	Records r
	join
	(
		select 
			[Year],
			[Month],
			sum([Indicator 1 Budget]) [Sum Indicator 1 Budget],
			sum([Indicator 2 Budget]) [Sum Indicator 2 Budget]
		from
			Records
		group by
			[Year],
			[Month]

	) t on r.[Year] = t.[Year] and r.[Month] = t.[Month];

select * from Records;

-- check all Weights are 1
select 
	[Year], 
	[Month], 
	sum([Indicator 1 Weight]) [Sum Indicator 1 Weight],
	sum([Indicator 2 Weight]) [Sum Indicator 2 Weight]
from 
	Records 
group by 
	[Year], 
	[Month];