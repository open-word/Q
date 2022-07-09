use Uganda;
go

create table PYIA
(
	ProgrammeID int,
	YearID int,
	IndicatorID int,
	ActorID int,
	constraint PK_PYIA primary key (ProgrammeID, YearID, IndicatorID, ActorID),
	constraint FK_PYIA_PYI foreign key (ProgrammeID, YearID, IndicatorID) references PYI (ProgrammeID, YearID, IndicatorID),
	constraint FK_PYIA_PA foreign key (ProgrammeID, ActorID) references PA (ProgrammeID, ActorID)
);
go

insert PYIA (ProgrammeID, YearID, IndicatorID, ActorID)
select
	PYI.ProgrammeID,
	PYI.YearID,
	PYI.IndicatorID,
	PA.ActorID
from
	PYI
	join PA on PYI.ProgrammeID = PA.ProgrammeID
order by
	PYI.ProgrammeID,
	PYI.YearID,
	PYI.IndicatorID,
	PA.ActorID;

--select * from PYIA;

select '4.1'
go