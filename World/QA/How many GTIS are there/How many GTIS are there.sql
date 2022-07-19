use World;
go

drop table ##gtis;

select
	G.Code GCode,
	G.Description GDesc,
	T.Code TCode,
	T.Description TDesc,
	I.Code ICode,
	I.Description IDesc,
	S.Code SCode,
	S.Description SDesc
into
	##gtis
from
	G full outer join
	T on G.Code = T.GoalCode full outer join
	I on T.Code = I.TargetCode full outer join
	[IS] on I.Code = [IS].IndicatorCode full outer join
	S on [IS].SeriesCode = S.Code
order by
	format(convert(int,G.Code),'D2');

select * from ##gtis 
where
	GCode is null or TCode is null or ICode is null or SCode is null

-- How many Goals are there?
select
	(select count(distinct GCode) from ##gtis),
	(select count(distinct GCode) from ##gtis where TCode is not null),
	(select count(distinct GCode) from ##gtis where TCode is not null and ICode is not null),
	(select count(distinct GCode) from ##gtis where TCode is not null and ICode is not null and SCode is not null);

-- How many Targets are there?
-- Target 11.c does not have an Indicator. From "Global Indicator Framework after 2022 refinement.English.xlsx" ...
--		"No suitable replacement indicator was proposed. 
--		The global statistical community is encouraged to work to develop an indicator that could be proposed for the 2025 comprehensive review. 
--		See E/CN.3/2020/2, paragraph 23."
-- Some Indicators do not have a Series.
select
	(select count(distinct TCode) from ##gtis),
	(select count(distinct TCode) from ##gtis where ICode is not null),
	(select count(distinct TCode) from ##gtis where ICode is not null and SCode is not null);

-- How many Indicators are there?
-- ICode is unique, IDesc identifies re-used Indicators.
-- Some Indicators do not have a Series.
-- 13.b.1 is a slight amendment of 13.2.1 per https://unstats.un.org/sdgs/indicators/indicators-list/
select
	(select count(distinct ICode) from ##gtis),
	(select count(distinct ICode) from ##gtis where SCode is not null),
	(select count(distinct IDesc) from ##gtis),
	(select count(distinct IDesc) from ##gtis where ICode <> '13.b.1'),
	(select count(distinct IDesc) from ##gtis where SCode is not null),
	(select count(distinct IDesc) from ##gtis where SCode is not null and ICode <> '13.b.1');

-- How many Series are there?
select
	(select count(distinct SCode) from ##gtis);