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
	constraint FK_PYIA_PYA foreign key (ProgrammeID, YearID, ActorID) references PYA (ProgrammeID, YearID, ActorID),
	constraint FK_PYIA_PIA foreign key (ProgrammeID, IndicatorID, ActorID) references PIA (ProgrammeID, IndicatorID, ActorID),
	constraint FK_PYIA_YIA foreign key (YearID, IndicatorID, ActorID) references YIA (YearID, IndicatorID, ActorID)
);
go

insert PYIA (ProgrammeID, YearID, IndicatorID, ActorID)
select
	PYI.ProgrammeID,
	PYI.YearID,
	PYI.IndicatorID,
	PYA.ActorID
from
	PYI
	join PYA on PYI.ProgrammeID = PYA.ProgrammeID and PYI.YearID = PYA.YearID
	join PIA on PYI.ProgrammeID = PIA.ProgrammeID and PYI.IndicatorID = PIA.IndicatorID and PYA.ActorID = PIA.ActorID
	join YIA on PYI.YearID = YIA.YearID and PYI.IndicatorID = YIA.IndicatorID and PIA.ActorID = YIA.ActorID 
order by
	PYI.ProgrammeID,
	PYI.YearID,
	PYI.IndicatorID,
	PYA.ActorID;

--select * from PYIA;

select '4.1'
go