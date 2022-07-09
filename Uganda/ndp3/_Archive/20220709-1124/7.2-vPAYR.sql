use Uganda;
go

create view vPAYR
as
select
	P.Reference					[Programme Reference],
	P.ReferenceName				[Programme Reference Name],
	P.ReferenceTLA				[Programme Reference TLA],
	A.Acronym					[Actor Acronym],
	A.Name						[Actor Name],
	Y.Name						[Year Name],
	I.Reference					[Indicator Reference],
	I.Name						[Indicator Name],
	PAYR.Budget					[Result Budget],
	PAYR.Performance			[Result Performance],
	PAYR.WeightedPerformance	[Result Weighted Performance] 
from 
	PAYR
	join P on PAYR.ProgrammeID = P.ProgrammeID
	join A on PAYR.ActorID = A.ActorID
	join Y on PAYR.YearID = Y.YearID
	join I on PAYR.IndicatorID = I.IndicatorID;
go

--select * from vPAYR;

select '7.2'
go