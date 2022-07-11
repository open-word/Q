select 
	PS.ProgrammeID,
	PS.SectorID,
	count(PAS.ActorID)
from 
	PS left join
	(
		select 
			PA.ProgrammeID,
			PA.ActorID,
			[AS].SectorID
		from
			PA join 
			[AS] on PA.ActorID = [AS].ActorID
	) PAS on PS.ProgrammeID = PAS.ProgrammeID and PS.SectorID = PAS.SectorID
group by
	PS.ProgrammeID,
	PS.SectorID
having
	count(PAS.ActorID) = 0;