use Uganda;
go

create view Vision2040
as
select
	Plans.Name									[Plan Name],
	Plans.ShortName								[Plan Short Name],
	Plans.Reference								[Plan Reference],
	Plans.ReferenceName							[Plan Reference Name],
	Plans.ReferenceShortName					[Plan Reference Short Name],

	P.Name										[Programme Name],
	P.ShortName									[Programme Short Name],
	P.Reference									[Programme Reference],
	P.ReferenceName								[Programme Reference Name],
	P.ReferenceShortName						[Programme Reference Short Name],

	Y.Name										[Year Name],
	Y.Reference									[Year Reference],
	Y.ReferenceName								[Year Reference Name],

	S.Name										[Sector Name],
	S.ShortName									[Sector Short Name],
	S.Reference									[Sector Reference],
	S.ReferenceName								[Sector Reference Name],
	S.ReferenceShortName						[Sector Reference Short Name],

	I.Name										[Indicator Name],
	I.Reference									[Indicator Reference],
	I.ReferenceName								[Indicator Reference Name],

	A.Name										[Actor Name],
	A.ShortName									[Actor Short Name],
	A.Reference									[Actor Reference],
	A.ReferenceName								[Actor Reference Name],
	A.ReferenceShortName						[Actor Reference Short Name],

	PYSIABudgetPerformance.Budget				[V Budget],
	PYSIABudgetPerformance.Performance			[V Performance],
	PYSIABudgetPerformance.WeightedPerformance	[V Weighted Performance]
from
	PYSIABudgetPerformance 
	full outer join P on PYSIABudgetPerformance.ProgrammeID = P.ProgrammeID 
		full outer join PlanP on P.ProgrammeID = PlanP.ProgrammeID 
		full outer join Plans on PlanP.PlanID = Plans.PlanID
	full outer join Y on PYSIABudgetPerformance.YearID = Y.YearID
	full outer join S on PYSIABudgetPerformance.SectorID = S.SectorID
	full outer join I on PYSIABudgetPerformance.IndicatorID = I.IndicatorID
	full outer join A on PYSIABudgetPerformance.ActorID = a.ActorID;
;
go

--select * from Vision2040;

select '7.1'
go