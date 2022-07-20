use World;
go

create table FGTISAYWeightCoverage
(
	FrameworkCode nvarchar(5),
	GoalCode nvarchar(2),
	TargetCode nvarchar(5),
	IndicatorCode nvarchar(7),
	SeriesCode nvarchar(20),
	AreaCode int,
	YearCode nchar(4),
	Weight decimal(18,8),
	Coverage decimal(18,8),
	WeightCoverage as [Weight] * Coverage
	constraint PK_FGTISAYWeightCoverage primary key (FrameworkCode, GoalCode, TargetCode, IndicatorCode, SeriesCode, AreaCode, YearCode),
	constraint FK_FGTISAYWeightCoverage_FGTISAY foreign key (FrameworkCode, GoalCode, TargetCode, IndicatorCode, SeriesCode, AreaCode, YearCode) references FGTISAY (FrameworkCode, GoalCode, TargetCode, IndicatorCode, SeriesCode, AreaCode, YearCode)
);

insert FGTISAYWeightCoverage (FrameworkCode, GoalCode, TargetCode, IndicatorCode, SeriesCode, AreaCode, YearCode, [Weight], Coverage)
select
	FGTISAY.FrameworkCode,
	FGTISAY.GoalCode,
	FGTISAY.TargetCode,
	FGTISAY.IndicatorCode,
	FGTISAY.SeriesCode,
	FGTISAY.AreaCode,
	FGTISAY.YearCode,
	1,
	iif(R.FrameworkCode is not null,1,0)
from
	FGTISAY full outer join
	R on 
		FGTISAY.FrameworkCode = R.FrameworkCode and
		FGTISAY.GoalCode = R.GoalCode and
		FGTISAY.TargetCode = R.TargetCode and
		FGTISAY.IndicatorCode = R.IndicatorCode and
		FGTISAY.SeriesCode = R.SeriesCode and
		FGTISAY.AreaCode = R.AreaCode and
		FGTISAY.YearCode = R.YearCode
order by
	FGTISAY.FrameworkCode,
	FGTISAY.GoalCode,
	FGTISAY.TargetCode,
	FGTISAY.IndicatorCode,
	FGTISAY.SeriesCode,
	FGTISAY.AreaCode,
	FGTISAY.YearCode;	

--select * from FGTISAYWeightCoverage;

select '4.2';
go