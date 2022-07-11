use Uganda;
go

create table PYSIA
(
	ProgrammeID int,
	YearID int,
	SectorID int,
	IndicatorID int,
	ActorID int,
	constraint PK_PYSIA primary key (ProgrammeID, YearID, SectorID, IndicatorID, ActorID),
	constraint FK_PYSIA_PYSI foreign key (ProgrammeID, YearID, SectorID, IndicatorID) references PYSI (ProgrammeID, YearID, SectorID, IndicatorID),
	constraint FK_PYSIA_PYSA foreign key (ProgrammeID, YearID, SectorID, ActorID) references PYSA (ProgrammeID, YearID, SectorID, ActorID)
);
go

insert PYSIA (ProgrammeID, YearID, SectorID, IndicatorID, ActorID)
select
	PYSI.ProgrammeID,
	PYSI.YearID,
	PYSI.SectorID,
	PYSI.IndicatorID,
	PYSA.ActorID
from
	PYSI
	join PYSA on 
		PYSI.ProgrammeID = PYSA.ProgrammeID and
		PYSI.YearID = PYSA.YearID and
		PYSI.SectorID = PYSA.SectorID
order by
	PYSI.ProgrammeID,
	PYSI.YearID,
	PYSI.SectorID,
	PYSI.IndicatorID,
	PYSA.ActorID;

--select * from PYSIA;

select '5.1'
go