use Uganda;
go

create Table PYS
(
	ProgrammeID int,
	YearID int,
	SectorID int,
	constraint PK_PYS primary key (ProgrammeID, YearID, SectorID),
	constraint FK_PYS_PY foreign key (ProgrammeID, YearID) references PY (ProgrammeID, YearID),
	constraint FK_PYI_PS foreign key (ProgrammeID, SectorID) references PS (ProgrammeID, SectorID),
	constraint FK_PYS_YS foreign key (YearID, SectorID) references YS (YearID, SectorID)
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
	join YS on PY.YearID = YS.YearID and PS.SectorID = YS.SectorID
order by
	PY.ProgrammeID,
	PY.YearID,
	PS.SectorID;

--select * from PYS;

select '3.04'
go