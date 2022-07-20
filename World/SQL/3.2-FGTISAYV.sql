use World;
go

drop index if exists Records.IX_Records_GTISAY;
go

create index IX_Records_GTISAY on Records (Goal, Target, Indicator, Series, GeoAreaCode, TimePeriod);
go

drop table if exists FGTISAYV;
go

create table FGTISAYV
(
	FrameworkCode nvarchar(5),
	GoalCode nvarchar(2),
	TargetCode nvarchar(5),
	IndicatorCode nvarchar(7),
	SeriesCode nvarchar(20),
	AreaCode int,
	YearCode nchar(4),
	IsCovered bit
	constraint PK_FGTISAYV primary key (FrameworkCode, GoalCode, TargetCode, IndicatorCode, SeriesCode, AreaCode, YearCode)
);

insert FGTISAYV (FrameworkCode, GoalCode, TargetCode, IndicatorCode, SeriesCode, AreaCode, YearCode, IsCovered)
select distinct top 10
	'World'								[FCode],
	convert(nvarchar(2),[Goal])			[GCode],
	convert(nvarchar(5),[Target])		[TCode],
	convert(nvarchar(7),[Indicator])	[ICode],
	convert(nvarchar(20),[Series])		[SCode],
	convert(int,[GeoAreaCode])			[ACode],
	convert(nvarchar(2),[TimePeriod])	[YCode],
	1									[IsCovered]
from
	Records
order by
	FCode,
	GCode,
	TCode,
	ICode,
	SCode,
	ACode,
	YCode;
go

--select * from FGTISAYV;

select '3.2';
go