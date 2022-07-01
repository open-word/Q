use Uganda;
go

select
	ProgrammeID,
	ActorID,
	DistrictID,
	YearID,
	convert(decimal(14,4), sum(WeightedPerformance)/sum(Budget))	[Q]
into
	PADYQ
from
	PADYR
group by rollup(
	ProgrammeID,
	ActorID,
	DistrictID,
	YearID);

--select * from PADYQ;

select '7.3';
go