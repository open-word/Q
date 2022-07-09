use Uganda;
go

create table PYIAS
(
	ProgrammeID int,
	YearID int,
	IndicatorID int,
	ActorID int,
	SectorID int,
	constraint PK_PYIAS primary key (ProgrammeID, YearID, IndicatorID, ActorID, SectorID),
	constraint FK_PYIAS_PYIA foreign key (ProgrammeID, YearID, IndicatorID, ActorID) references PYIA (ProgrammeID, YearID, IndicatorID, ActorID),
	constraint FK_PYIAS_AS foreign key (ActorID, SectorID) references [AS] (ActorID, SectorID)
);
go

insert PYIAS (ProgrammeID, YearID, IndicatorID, ActorID, SectorID)
select
	PYIA.ProgrammeID,
	PYIA.YearID,
	PYIA.IndicatorID,
	PYIA.ActorID,
	[AS].SectorID
from
	PYIA
	join [AS] on PYIA.ActorID = [AS].ActorID
order by
	PYIA.ProgrammeID,
	PYIA.YearID,
	PYIA.IndicatorID,
	PYIA.ActorID,
	[AS].SectorID;

--select * from PYIAS;

select '5.1'
go