use World;
go

create table FGTISAY
(
	FrameworkCode nvarchar(5),
	GoalCode nvarchar(2),
	TargetCode nvarchar(5),
	IndicatorCode nvarchar(7),
	SeriesCode nvarchar(20),
	AreaCode int,
	YearCode nchar(4),
	constraint PK_FGTISAY primary key (FrameworkCode, GoalCode, TargetCode, IndicatorCode, SeriesCode, AreaCode, YearCode)
);

insert FGTISAY (FrameworkCode, GoalCode, TargetCode, IndicatorCode, SeriesCode, AreaCode, YearCode)
select
	F.Code,
	G.Code,
	T.Code,
	I.Code,
	S.Code,
	A.Code,
	Y.Code
from
	F join
	G on F.Code = G.FrameworkCode join
	T on G.Code = T.GoalCode join
	I on T.Code = I.TargetCode join
	[IS] on I.Code = [IS].IndicatorCode join
	S on [IS].SeriesCode = S.Code cross join
	A cross join
	Y
order by
	F.Code,
	G.Code,
	T.Code,
	I.Code,
	S.Code,
	A.Code,
	Y.Code;

--select * from FGTISAY;

select '4.1'
go

--select * from 
--	(select distinct Code from G) t1 
--	full outer join 
--	(select distinct Goal from Records) t2
--	on t1.Code = t2.Goal
--where
--	t1.Code is null or t2.Goal is null;

--select * from 
--	(select distinct Code from T) t1 
--	full outer join 
--	(select distinct Target from Records) t2
--	on t1.Code = t2.Target
--where
--	t1.Code is null or t2.Target is null;

--select * from 
--	(select distinct Code from I) t1 
--	full outer join 
--	(select distinct Indicator from Records) t2
--	on t1.Code = t2.Indicator
--where
--	t1.Code is null or t2.Indicator is null;

--select * from 
--	(select distinct Code from S) t1 
--	full outer join 
--	(select distinct SeriesCode from Records) t2
--	on t1.Code = t2.SeriesCode
--where
--	t1.Code is null or t2.SeriesCode is null;

--select * from 
--	(select distinct Name from A) t1 
--	full outer join 
--	(select distinct GeoAreaName from Records) t2
--	on t1.Name = t2.GeoAreaName
--where
--	t1.Name is null or t2.GeoAreaName is null;

--select * from 
--	(select distinct YearID from Y) t1 
--	full outer join 
--	(select distinct TimePeriod from Records) t2
--	on t1.YearID = t2.TimePeriod
--where
--	t1.YearID is null or t2.TimePeriod is null;