use Understanding;
go

select
	ProgrammeID,
	MinistryID,
	DistrictID,
	YearID,
	convert(decimal(14,4), sum(WeightedPerformance)/sum(Budget))	[Q]
into
	PMDYQ
from
	PMDYR
group by rollup(
	ProgrammeID,
	MinistryID,
	DistrictID,
	YearID);

--select * from PMDYQ;

select '7.3';
go