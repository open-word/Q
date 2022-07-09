use Uganda;
go

-- Programmes
select 
	*
from
	P full outer join
	ndp3.Programmes on 
		P.ProgrammeID = ndp3.Programmes.ProgrammeID
where
	P.ProgrammeID is null or ndp3.Programmes.ProgrammeID is null;

-- Actors
select 
	*
from
	A full outer join
	ndp3.Actors on 
		A.ActorID = ndp3.Actors.ActorID and
		A.Name = ndp3.Actors.Name and
		A.ShortName = ndp3.Actors.ShortName
where
	A.ActorID is null or ndp3.Actors.ActorID is null;
	
-- ProgrammesActors
select 
	*
from
	PA full outer join
	ndp3.ProgrammesActors on 
		PA.ProgrammeID = ndp3.ProgrammesActors.ProgrammeID and
		PA.ActorID = ndp3.ProgrammesActors.ActorID
where
	PA.ProgrammeID is null or ndp3.ProgrammesActors.ProgrammeID is null;