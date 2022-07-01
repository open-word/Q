use Uganda;
go

select
	ProgrammeID,
	YearID,
	convert(decimal(14,4), sum(WeightedPerformance)/sum(Budget))	[Q]
into
	PYQ
from
	PAYR
group by rollup(
	ProgrammeID,
	YearID);

--select * from PYQ;

select '7.1';
go