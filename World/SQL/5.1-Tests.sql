use World;
go

create table Tests
(
	TestID int identity,
	Code nchar(6),
	Description nvarchar(60),
	Result nchar(4),
	constraint PK_Tests primary key (TestID),
	constraint UQ_Tests_Code unique (Code),
	constraint UQ_Tests_Description unique  (Description)
);

declare @Test01 int;
select 
	@Test01 = count(1)
from 
	(select distinct 'World' as Framework,Goal,Target,Indicator,Series,GeoAreaCode,TimePeriod from Records) a
		left join
	(select FrameworkCode,GoalCode,TargetCode,IndicatorCode,SeriesCode,AreaCode,YearCode from FGTISAY) b
		on a.Framework = b.FrameworkCode
		and a.Goal = b.GoalCode
		and a.Target = b.TargetCode
		and a.Indicator = b.IndicatorCode
		and a.Series = b.SeriesCode
		and a.GeoAreaCode = b.AreaCode
		and a.TimePeriod = b.YearCode
where
	b.FrameworkCode is null;
insert Tests (Code, Description, Result) values ('Test01', 'Records left join FGTISAY', iif(@Test01=0,'Pass','Fail'));

declare @Test02 int;
select 
	@Test02 = count(1)
from 
	FGTISAY a
		left join
	FGTISAYWeightCoverage b
		on a.FrameworkCode = b.FrameworkCode
		and a.GoalCode = b.GoalCode
		and a.TargetCode = b.TargetCode
		and a.IndicatorCode = b.IndicatorCode
		and a.SeriesCode = b.SeriesCode
		and a.AreaCode = b.AreaCode
		and a.YearCode = b.YearCode
where
	b.FrameworkCode is null;
insert Tests (Code, Description, Result) values ('Test02', 'FGTISAY left join FGTISAYWeightCoverage', iif(@Test02=0,'Pass','Fail'));

select * from Tests;

select '4.1'
go