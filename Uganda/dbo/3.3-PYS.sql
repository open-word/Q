use Uganda;
go

create Table PYS
(
	ProgrammeID int,
	YearID int,
	SectorID int,
	constraint PK_PYS primary key (ProgrammeID, YearID, SectorID),
	constraint FK_PYS_PY foreign key (ProgrammeID, YearID) references PY (ProgrammeID, YearID),
	constraint FK_PYI_PS foreign key (ProgrammeID, SectorID) references PS (ProgrammeID, SectorID)
);
go

insert PYS (ProgrammeID, YearID, SectorID)
select
	PY.ProgrammeID,
	PY.YearID,
	PS.SectorID
from
	PY
	join PS on PY.ProgrammeID = PS.ProgrammeID
order by
	PY.ProgrammeID,
	PY.YearID,
	PS.SectorID;

--select * from PYS;

select '3.3'
go