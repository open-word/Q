use Uganda;
go

create table PYSI
(
	ProgrammeID int,
	YearID int,
	SectorID int,
	IndicatorID int,
	constraint PK_PYSI primary key (ProgrammeID, YearID, SectorID, IndicatorID),
	constraint FK_PYSI_PYS foreign key (ProgrammeID, YearID, SectorID) references PYS (ProgrammeID, YearID, SectorID),
	constraint FK_PYSI_PI foreign key (ProgrammeID, IndicatorID) references PI (ProgrammeID, IndicatorID)
);
go

insert PYSI (ProgrammeID, YearID, SectorID, IndicatorID)
select
	PYS.ProgrammeID,
	PYS.YearID,
	PYS.SectorID,
	PI.IndicatorID
from
	PYS
	join PI on PYS.ProgrammeID = PI.ProgrammeID
order by
	PYS.ProgrammeID,
	PYS.YearID,
	PYS.SectorID,
	PI.IndicatorID;

--select * from PYSI;

select '4.1'
go