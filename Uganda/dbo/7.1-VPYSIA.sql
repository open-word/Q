use Uganda;
go

create view VPYSIA
as
select
	P.Name										[P Name],
	P.ShortName									[P Short Name],
	P.Reference									[P Reference],
	P.ReferenceName								[P Reference Name],
	P.ReferenceShortName						[P Reference Short Name],

	Y.Name										[Y Name],
	Y.Reference									[Y Reference],
	Y.ReferenceName								[Y Reference Name],

	S.Name										[S Name],
	S.ShortName									[S Short Name],
	S.Reference									[S Reference],
	S.ReferenceName								[S Reference Name],
	S.ReferenceShortName						[S Reference Short Name],

	I.Name										[I Name],
	I.Reference									[I Reference],
	I.ReferenceName								[I Reference Name],

	A.Name										[A Name],
	A.ShortName									[A Short Name],
	A.Reference									[A Reference],
	A.ReferenceName								[A Reference Name],
	A.ReferenceShortName						[A Reference Short Name],

	PYSIABudgetPerformance.Budget				[PYSIA Budget],
	PYSIABudgetPerformance.Performance			[PYSIA Performance],
	PYSIABudgetPerformance.WeightedPerformance	[PYSIA Weighted Performance]
from
	PYSIABudgetPerformance
	full outer join P on PYSIABudgetPerformance.ProgrammeID = P.ProgrammeID
	full outer join Y on PYSIABudgetPerformance.YearID = Y.YearID
	full outer join S on PYSIABudgetPerformance.SectorID = S.SectorID
	full outer join I on PYSIABudgetPerformance.IndicatorID = I.IndicatorID
	full outer join A on PYSIABudgetPerformance.ActorID = a.ActorID;
;
go

--select * from VPYSIA;

select '7.1'
go