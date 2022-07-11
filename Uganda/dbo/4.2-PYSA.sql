use Uganda;
go

drop table if exists PYSA;
go

create Table PYSA
(
	ProgrammeID int,
	YearID int,
	SectorID int,
	ActorID int,
	constraint PK_PYSA primary key (ProgrammeID, YearID, SectorID, ActorID),
	constraint FK_PYSA_PYS foreign key (ProgrammeID, YearID, SectorID) references PYS (ProgrammeID, YearID, SectorID),
	constraint FK_PYSA_PSA foreign key (ProgrammeID, SectorID, ActorID) references PSA (ProgrammeID, SectorID, ActorID)
);
go

insert PYSA (ProgrammeID, YearID, SectorID, ActorID)
select
	PYS.ProgrammeID,
	PYS.YearID,
	PYS.SectorID,
	PSA.ActorID
from
	PYS
	join PSA on 
		PYS.ProgrammeID = PSA.ProgrammeID and
		PYS.SectorID = PSA.SectorID
order by
	PYS.ProgrammeID,
	PYS.YearID,
	PYS.SectorID,
	PSA.ActorID;

--select * from PYSA;

select '4.2'
go