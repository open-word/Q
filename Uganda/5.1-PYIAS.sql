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
	constraint FK_PYIAS_PYI foreign key (ProgrammeID, YearID, IndicatorID) references PYI (ProgrammeID, YearID, IndicatorID),
	constraint FK_PYIAS_PAS foreign key (ProgrammeID, ActorID, SectorID) references PAS (ProgrammeID, ActorID, SectorID),
	constraint FK_PYIAS_PYS foreign key (ProgrammeID, YearID, SectorID) references PYS (ProgrammeID, YearID, SectorID)
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