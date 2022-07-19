use World;
go

select
	G.Code,
	T.Code,
	I.Code,
	S.Code
from
	G full outer join
	T on G.Code = T.GoalCode full outer join
	I on T.Code = I.TargetCode full outer join
	[IS] on I.Code = [IS].IndicatorCode full outer join
	S on [IS].SeriesCode = S.Code
where
	G.Code is null or T.Code is null or I.Code is null or S.Code is null
order by
	G.Code,
	T.Code,
	I.Code,
	S.Code;