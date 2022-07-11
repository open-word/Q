use Uganda;
go

select
	ProgrammeID,
	YearID,
	SectorID,
	IndicatorID,
	ActorID,
	convert(decimal(18,4), sum(WeightedPerformance) / sum(Budget)) [Q]
from
	PYSIABudgetPerformance
group by rollup 
	(
		ProgrammeID,
		YearID,
		SectorID,
		IndicatorID,
		ActorID
	);

