use Uganda;
go

create view VPYIAS
as
select
	P.Name										[P Name],
	P.Reference									[P Reference],
	P.ReferenceName								[P Reference Name],
	P.ReferenceTLA								[P Reference TLA],

	Y.Name										[Y Name],
	Y.Reference									[Y Reference],
	Y.ReferenceName								[Y Reference Name],

	I.Name										[I Name],
	I.Reference									[I Reference],
	I.ReferenceName								[I Reference Name],

	A.Name										[A Name],
	A.Reference									[A Reference],
	A.ReferenceName								[A Reference Name],

	S.Name										[S Name],
	S.Reference									[S Reference],
	S.ReferenceName								[S Reference Name],

	PYIASBudgetPerformance.Budget				[PYIAS Budget],
	PYIASBudgetPerformance.Performance			[PYIAS Performance],
	PYIASBudgetPerformance.WeightedPerformance	[PYIAS Weighted Performance]
from
	PYIASBudgetPerformance
	full outer join P on PYIASBudgetPerformance.ProgrammeID = P.ProgrammeID
	full outer join Y on PYIASBudgetPerformance.YearID = Y.YearID
	full outer join I on PYIASBudgetPerformance.IndicatorID = I.IndicatorID
	full outer join A on PYIASBudgetPerformance.ActorID = a.ActorID
	full outer join S on PYIASBudgetPerformance.SectorID = S.SectorID;
go

--select * from VPYIAS;

select '8.1'
go