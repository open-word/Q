use Understanding;
go

select
	ProgrammeID,
	MinistryID,
	YearID,
	convert(decimal(14,4), sum(WeightedPerformance)/sum(Budget))	[Q]
into
	PMYQ
from
	PMYR
group by rollup(
	ProgrammeID,
	MinistryID,
	YearID);

--select * from PMYQ;

select '7.2';
go