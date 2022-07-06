use Uganda;
go

select
	[P Name],
	[I Name],
	[A Name],
	[Y Name],
	convert(decimal(18,4),sum([PYIAS Weighted Performance])/sum([PYIAS Budget])) [Q]
from
	VPYIAS
group by rollup(
	[P Name],
	[I Name],
	[A Name],
	[Y Name]);

--select * from PYIASBudgetPerformance where ProgrammeID = 1 and IndicatorID = 1 and ActorID = 1;

--select sum(WeightedPerformance)/sum(Budget) from PYIASBudgetPerformance where ProgrammeID = 1 and IndicatorID = 1 and ActorID = 1;