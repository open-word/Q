use Uganda;
go

create Table PAS
(
	ProgrammeID int,
	ActorID int,
	SectorID int,
	constraint PK_PAS primary key (ProgrammeID, ActorID, SectorID),
	constraint FK_PAS_PA foreign key (ProgrammeID, ActorID) references PA (ProgrammeID, ActorID),
	constraint FK_PAS_PS foreign key (ProgrammeID, SectorID) references PS (ProgrammeID, SectorID),
	constraint FK_PAS_AS foreign key (ActorID, SectorID) references [AS] (ActorID, SectorID)
);
go

insert PAS (ProgrammeID, ActorID, SectorID)
select
	PA.ProgrammeID,
	PA.ActorID,
	PS.SectorID
from
	PA
	join PS on PA.ProgrammeID = PS.ProgrammeID 
	join [AS] on PA.ActorID = [AS].ActorID and PS.SectorID = [AS].SectorID
order by
	PA.ProgrammeID,
	PA.ActorID,
	PS.SectorID

--select * from PAS;

select '3.08'
go