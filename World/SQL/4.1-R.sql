use World;
go

if not exists (select 1 from sys.indexes where name = 'IX_Records_GTISAY' and object_id = object_id('Records'))
begin
	create index IX_Records_GTISAY on Records (Goal, Target, Indicator, Series, GeoAreaCode, TimePeriod);
end
go

create table R
(
	FrameworkCode nchar(5),
	GoalCode nchar(2),
	TargetCode nvarchar(5),
	IndicatorCode nvarchar(8),
	SeriesCode nvarchar(20),
	AreaCode nchar(3),
	YearCode nchar(4),
	constraint PK_R primary key (FrameworkCode, GoalCode, TargetCode, IndicatorCode, SeriesCode, AreaCode, YearCode),
	constraint FK_R_FGTISAY foreign key (FrameworkCode, GoalCode, TargetCode, IndicatorCode, SeriesCode, AreaCode, YearCode) references FGTISAY (FrameworkCode, GoalCode, TargetCode, IndicatorCode, SeriesCode, AreaCode, YearCode)
);

insert R (FrameworkCode, GoalCode, TargetCode, IndicatorCode, SeriesCode, AreaCode, YearCode)
select distinct
	'World'						[FrameworkCode],
	dbo.PadCode(Goal)			[GoalCode],
	dbo.PadCode(Target)			[TargetCode],
	dbo.PadCode(Indicator)		[IndicatorCode],
	dbo.PadCode(Series)			[SeriesCode],
	format(GeoAreaCode,'D3')	[AreaCode],
	TimePeriod					[TimePeriod]
from
	Records
order by
	[FrameworkCode],
	[GoalCode],
	[TargetCode],
	[IndicatorCode],
	[SeriesCode],
	[AreaCode],
	[TimePeriod];
go

--select * from R;

select '4.1';
go