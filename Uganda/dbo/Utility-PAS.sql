select 
	P.Name,
	A.Name,
	S.Name
from 
	P full outer join
	PA on P.ProgrammeID = PA.ProgrammeID full outer join 
		A on PA.ActorID = A.ActorID full outer join
	[AS] on A.ActorID = [AS].ActorID full outer join S on [AS].SectorID = S.SectorID;