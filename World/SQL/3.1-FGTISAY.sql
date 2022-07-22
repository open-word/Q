use World;
go
drop table if exists FGTISAY;
create table FGTISAY
(
	FCode nchar(5),
	GCode nchar(2),
	TCode nvarchar(5),
	ICode nvarchar(8),
	SCode nvarchar(20),
	ACode nchar(3),
	YCode nchar(4),
	constraint PK_FGTISAY primary key (FCode, GCode, TCode, ICode, SCode, ACode, YCode),
	constraint FK_FGTISAY_F foreign key (FCode) references F (FrameworkCode),
	constraint FK_FGTISAY_G foreign key (GCode) references G (GoalCode),
	constraint FK_FGTISAY_T foreign key (TCode) references T (TargetCode),
	constraint FK_FGTISAY_I foreign key (ICode) references I (IndicatorCode),
	constraint FK_FGTISAY_S foreign key (SCode) references S (SeriesCode),
	constraint FK_FGTISAY_A foreign key (ACode) references A (AreaCode),
	constraint FK_FGTISAY_Y foreign key (YCode) references Y (YearCode)
);

insert FGTISAY (FCode, GCode, TCode, ICode, SCode, ACode, YCode)
select
	F.FrameworkCode,
	G.GoalCode,
	T.TargetCode,
	I.IndicatorCode,
	S.SeriesCode,
	A.AreaCode,
	Y.YearCode
from
	F join
	G on F.FrameworkCode = G.FrameworkCode join
	T on G.GoalCode = T.GoalCode join
	I on T.TargetCode = I.TargetCode join
	[IS] on I.IndicatorCode = [IS].IndicatorCode join
	S on [IS].SeriesCode = S.SeriesCode cross join
	A cross join
	Y
order by
	F.FrameworkCode,
	G.GoalCode,
	T.TargetCode,
	I.IndicatorCode,
	S.SeriesCode,
	A.AreaCode,
	Y.YearCode;

--select * from FGTISAY;

select '3.1'
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