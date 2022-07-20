use World;
go

if not exists (select 1 from sys.indexes where name = 'IX_Records_GTISAY' and object_id = object_id('Records'))
begin
	create index IX_Records_GTISAY on Records (Goal, Target, Indicator, Series, GeoAreaCode, TimePeriod);
end
go

create table R
(
	FrameworkCode nvarchar(5),
	GoalCode nvarchar(2),
	TargetCode nvarchar(5),
	IndicatorCode nvarchar(7),
	SeriesCode nvarchar(20),
	AreaCode int,
	YearCode nchar(4),
	constraint PK_R primary key (FrameworkCode, GoalCode, TargetCode, IndicatorCode, SeriesCode, AreaCode, YearCode)
);

insert R (FrameworkCode, GoalCode, TargetCode, IndicatorCode, SeriesCode, AreaCode, YearCode)
select distinct
	'World'								[FrameworkCode],
	convert(nvarchar(2),[Goal])			[GoalCode],
	convert(nvarchar(5),[Target])		[TargetCode],
	convert(nvarchar(7),[Indicator])	[IndicatorCode],
	convert(nvarchar(20),[Series])		[SeriesCode],
	convert(int,[GeoAreaCode])			[AreaCode],
	convert(nchar(4),[TimePeriod])		[YearCode]
from
	Records
order by
	FrameworkCode,
	GoalCode,
	TargetCode,
	IndicatorCode,
	SeriesCode,
	AreaCode,
	YearCode;
go

--select * from R;

select '3.1';
go