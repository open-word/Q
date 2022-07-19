use World;
go

select 
	I.Description,
	G.Code [GCode],
	T.Code [TCode],
	I.Code [ICode],
	S.Code [SCode]
from 
	G full outer join
	T on G.Code = T.GoalCode full outer join
	I on T.Code = I.TargetCode full outer join
	[IS] on I.Code = [IS].IndicatorCode full outer join
	S on [IS].SeriesCode = S.Code
where 
	I.Description in (select I.Description from I group by Description having count(1) > 1) -- I.Code is unique, I.Description is not
order by
	I.Description,
	G.Code,
	T.Code,
	S.Code;

-- Per https://unstats.un.org/sdgs/indicators/indicators-list/
-- 13.2.1/13.b.1 (with a slight amendment) repeats ... although the series are different.

select 
	I.Code,
	I.Description,
	S.Code,
	S.Description
from 
	I join
	[IS] on I.Code = [IS].IndicatorCode join
	S on [IS].SeriesCode = S.Code
where 
	I.Code in ('13.2.1','13.b.1');