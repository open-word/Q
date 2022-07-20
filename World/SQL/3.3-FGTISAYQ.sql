use World;
go
drop table if exists FGTISAYQ;
go

create table FGTISAYQ
(
	FrameworkCode nvarchar(5),
	GoalCode nvarchar(2),
	TargetCode nvarchar(5),
	IndicatorCode nvarchar(7),
	SeriesCode nvarchar(20),
	AreaCode int,
	YearCode nchar(4),
	Weight decimal(18,8),
	Performance decimal(18,8),
	WeightedPerformance decimal(18,8),
	constraint PK_GTISATQ primary key (FrameworkCode, GoalCode, TargetCode, IndicatorCode, SeriesCode, AreaCode, YearCode)
);

insert FGTISAYQ (FrameworkCode, GoalCode, TargetCode, IndicatorCode, SeriesCode, AreaCode, YearCode, Weight, Performance, WeightedPerformance)
select
	FGTISAY.FrameworkCode,
	FGTISAY.GoalCode,
	FGTISAY.TargetCode,
	FGTISAY.IndicatorCode,
	FGTISAY.SeriesCode,
	FGTISAY.AreaCode,
	FGTISAY.YearCode,
	1								[Weight],				-- Equal weighting for now.
	iif(R.Goal is null, 0, 1)		[Performance],			-- Yes/No at this point. 
	1 * iif(R.Goal is null, 0, 1)	[WeightedPerformance]	-- Purely for symmetry :)
from
	FGTISAY full outer join
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
		FGTISAY.GoalCode = R.Goal and
		FGTISAY.TargetCode = R.Target and
		FGTISAY.IndicatorCode = R.Indicator and
		FGTISAY.SeriesCode = R.Series and
		FGTISAY.AreaCode = R.GeoAreaCode and
		FGTISAY.YearCode = R.TimePeriod

--select * from FGTISAYQ;

select '3.3';
go