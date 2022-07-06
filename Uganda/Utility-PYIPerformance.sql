use Uganda;

select
	P.Name  [Programme Name],
	Y.Name  [Year Name],
	I.Name  [Indicator Name],
	A.Name	[Actor Name],
	S.Name	[Sector Name]
from 
	P full outer join
	PY on P.ProgrammeID = PY.ProgrammeID full outer join 
		Y on PY.YearID = Y.YearID full outer join
	PI on P.ProgrammeID = PI.ProgrammeID full outer join 
		I on PI.IndicatorID = I.IndicatorID full outer join
	PA on P.ProgrammeID = PA.ProgrammeID full outer join 
		A on PA.ActorID = A.ActorID full outer join 
		[AS] on PA.ActorID = [AS].ActorID full outer join
		S on [AS].SectorID = S.SectorID
order by P.ProgrammeID, Y.YearID, I.IndicatorID, A.ActorID, S.SectorID;