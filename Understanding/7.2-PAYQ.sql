use Understanding;
go

select
	ProgrammeID,
	ActorID,
	YearID,
	convert(decimal(14,4), sum(WeightedPerformance)/sum(Budget))	[Q]
into
	PAYQ
from
	PAYR
group by rollup(
	ProgrammeID,
	ActorID,
	YearID);

--select * from PAYQ;

select '7.2';
go