use Uganda;
go

create view vPADYR
as
select
	P.Reference					[Programme Reference],
	P.ReferenceName				[Programme Reference Name],
	P.ReferenceTLA				[Programme Reference TLA],
	A.Acronym					[Actor Acronym],
	A.Name						[Actor Name],
	D.Name						[District Name],
	Y.Name						[Year Name],
	I.Reference					[Indicator Reference],
	I.Name						[Indicator Name],
	PADYR.Budget				[Result Budget],
	PADYR.Performance			[Result Performance],
	PADYR.WeightedPerformance	[Result Weighted Performance] 
from 
	PADYR
	join P on PADYR.ProgrammeID = P.ProgrammeID
	join A on PADYR.ActorID = A.ActorID
	join D on PADYR.DistrictID = D.DistrictID
	join Y on PADYR.YearID = Y.YearID
	join I on PADYR.IndicatorID = I.IndicatorID;
go


--select * from vPADYR;

select '7.3'
go