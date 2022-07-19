use World;
go
drop table if exists GTISAYQ;
go

create table GTISAYQ
(
	GoalCode nvarchar(2),
	TargetCode nvarchar(5),
	IndicatorCode nvarchar(7),
	SeriesCode nvarchar(20),
	AreaCode int,
	YearCode nchar(4),
	Weight decimal(18,8),
	Performance decimal(18,8),
	WeightedPerformance decimal(18,8),
	constraint PK_GTISATQ primary key (GoalCode, TargetCode, IndicatorCode, SeriesCode, AreaCode, YearCode)
);

insert GTISAYQ (GoalCode, TargetCode, IndicatorCode, SeriesCode, AreaCode, YearCode, Weight, Performance, WeightedPerformance)
select
	GTISAY.GoalCode,
	GTISAY.TargetCode,
	GTISAY.IndicatorCode,
	GTISAY.SeriesCode,
	GTISAY.AreaCode,
	GTISAY.YearCode,
	1								[Weight],				-- Equal weighting for now.
	iif(R.Goal is null, 0, 1)		[Performance],			-- Yes/No at this point. 
	1 * iif(R.Goal is null, 0, 1)	[WeightedPerformance]	-- Purely for symmetry :)
from
	GTISAY full outer join
	(
		select distinct
			Goal,
			Target,
			Indicator,
			Series,
			GeoAreaCode,
			TimePeriod
		from 
			Records
	) R
	on
		GTISAY.GoalCode = R.Goal and
		GTISAY.TargetCode = R.Target and
		GTISAY.IndicatorCode = R.Indicator and
		GTISAY.SeriesCode = R.Series and
		GTISAY.AreaCode = R.GeoAreaCode and
		GTISAY.YearCode = R.TimePeriod

--select * from GTISAYQ;

select '3.3';
go