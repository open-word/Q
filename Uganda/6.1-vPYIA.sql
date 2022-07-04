use Uganda;
go

create view vPYIA
as
select
	P.Name						[P Name],
	P.Reference					[P Reference],
	P.ReferenceName				[P Reference Name],
	P.ReferenceTLA				[P Reference TLA],

	Y.Name						[Y Name],
	Y.Reference					[Y Reference],
	Y.ReferenceName				[Y Reference Name],

	I.Name						[I Name],
	I.Reference					[I Reference],
	I.ReferenceName				[I Reference Name],

	A.Name						[A Name],
	A.Reference					[A Reference],
	A.ReferenceName				[A Reference Name],

	PYIA.Budget					[PYIA Budget],
	PYIA.Performance			[PYIA Performance],
	PYIA.WeightedPerformance	[PYIA Weighted Performance]
from
	PYIA
	full outer join P on PYIA.ProgrammeID = P.ProgrammeID
	full outer join PY on PYIA.ProgrammeID = PY.ProgrammeID and PYIA.YearID = PY.YearID
		join Y on PY.YearID = Y.YearID
	full outer join PI on PYIA.ProgrammeID = PI.ProgrammeID and PYIA.IndicatorID = PI.IndicatorID
		join I on PI.IndicatorID = I.IndicatorID
	full outer join PA on PYIA.ProgrammeID = PA.ProgrammeID and PYIA.ActorID = PA.ActorID
		join A on PA.ActorID = a.ActorID;
go

--select * from vPYIA;

select '6.1'
go